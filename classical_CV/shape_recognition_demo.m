function shape_recognition_demo
try
	clc; % Clear the command window.
	close all; % Close all figures (except those of imtool.)
	workspace; % Make sure the workspace panel is showing.
	fontSize = 20;
	
	% For reference, compute the theoretical circularity of a bunch of regular polygons
	% with different number of sides starting with 3 (triangle).
	dividingValues = PlotTheoreticalCircularity;
	
	% Make the last dividing value infinity because any circularity from .99999 up to inifinity should be a circle.
	% and sometimes you have a circularity more than 1 due to quantization errors.
	dividingValues(end) = inf;
	
	% Now create a demo image.
	[binaryImage, numSides] = CreateDemoImage();
	% Count the number of shapes
	[~, numShapes] = bwlabel(binaryImage);
	
	% Display the polygon demo image.
	subplot(1, 2, 1);
	imshow(binaryImage);
	caption = sprintf('Image with %d Shapes', numShapes);
	title(caption, 'FontSize', fontSize);
	hold on; % So that text labels won't blow away the image.
	
	% Set up figure properties:
	% Enlarge figure to full screen.
	set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
	% Get rid of tool bar and pulldown menus that are along top of figure.
	set(gcf, 'Toolbar', 'none', 'Menu', 'none');
	% Give a name to the title bar.
	set(gcf, 'Name', 'Demo by ImageAnalyst', 'NumberTitle', 'Off')
	drawnow; % Make it display immediately.
	
	[labeledImage, numberOfObjects] = bwlabel(binaryImage);
	blobMeasurements = regionprops(labeledImage, 'Perimeter', 'Area', 'Centroid', 'Image');
	% Get all the measurements into single arrays for convenience.
	allAreas = [blobMeasurements.Area];
	allPerimeters = [blobMeasurements.Perimeter];
	circularities = (4 * pi *  allAreas) ./ allPerimeters.^2
	% Sort in order of increasing circularity
	[sortedCircularities, sortOrder] = sort(circularities, 'Ascend');
	% Sort the centroids in the same way.
	blobMeasurements = blobMeasurements(sortOrder);
	allAreas = allAreas(sortOrder);
	allPerimeters = allPerimeters(sortOrder);
	% Plot a bar chart of the circularities.
	subplot(1, 2, 2);
	bar(sortedCircularities);
	ylim([0.55, 1.1]);
	grid on;
	title('Actual Measured Circularities', 'FontSize', fontSize);
	% Make tick marks every 0.1
	ax = gca;
	ax.YTick = 0.6 : 0.02 : 1.2;
	ax.YAxis.TickLabelFormat = '%.2f';
	% Make a blue line at a Y level of 1.0 - the perfect circle level.
	line(xlim, [1,1], 'Color', 'b', 'LineWidth', 2);

	% Let's compute areas a different way.  The "Area" returned by regionprops is a count of the number of pixels.
	% This sometimes overestimates the area.  Let's use bwarea, which computes the area on a
	% pixel-center to pixel center basis.
	for k = 1 : numberOfObjects
		thisBlob = blobMeasurements(k).Image;
		allBwAreas(k) = bwarea(thisBlob);
	end
	bwCircularities = (4 * pi *  allBwAreas) ./ allPerimeters.^2
	sortedCircularities = bwCircularities
	
	% Put up red horizontal lines at the dividing values
	hold on;
	xl = xlim();
	for k = 1 : length(numSides)-1
		thisSideLength = numSides(k);
		thisDividingValue = dividingValues(thisSideLength);
		line(xl, [thisDividingValue, thisDividingValue], 'Color', 'r');
		% For the first 6, print the dividing value at the left just above the line.
		% After 6 it would get too crowded
		if k <= 6
			theLabel = sprintf('Dividing value = %.4f', thisDividingValue);
			text(xl(1)+0.1, thisDividingValue + 0.005, theLabel, 'Color', 'r');
		end
	end
	
	% Explain why the labels may not be accurate.
	message = sprintf('Before we start classifying the shapes,\nnote that the circularity may deviate from the theoretical circularity\ndepending on the size, rotation, and the algorithm\nused to compute area and perimeter.');
	fprintf('%s\n', message);
	uiwait(helpdlg(message));
	
	% Say what they are, one by one.
	subplot(1, 2, 1);
	for blobNumber = 1 : numberOfObjects
		% Get the circularity of this specific blob.
		thisCircularity = sortedCircularities(blobNumber);
		% See which theoretical dividing value it's less than.
		% This will determine the number of sides it has.
		numSides = find(thisCircularity < dividingValues, 1, 'first');
		if numSides == 3
			% Blob has 3 sides.
			theShape = 'triangle';
		elseif numSides == 4
			% Blob has 4 sides.
			theShape = 'square';
		elseif numSides == 5
			% Blob has 5 sides.
			theShape = 'pentagon';
		elseif numSides == 6
			% Blob has 6 sides.
			theShape = 'hexagon';
		else
			% Blob has 7 or more sides.
			theShape = 'nearly circular';
		end
		% Place a label on the shape
		xCentroid = blobMeasurements(blobNumber).Centroid(1);
		yCentroid = blobMeasurements(blobNumber).Centroid(2);
		plot(xCentroid, yCentroid, 'r+', 'LineWidth', 2, 'MarkerSize', 15);
		text(xCentroid+20, yCentroid, theShape, 'FontSize', fontSize, 'Color', 'r', 'FontWeight', 'Bold');
		% Inform the user what the circularity and shape are.
		promptMessage = sprintf('\nThe circularity of object #%d is %.3f, so the object is a %s shape.\nIt is estimated to have %d sides.\n(Range for %s is [%.4f - %.4f].)',...
			blobNumber, thisCircularity, theShape, numSides, ...
			theShape, dividingValues(numSides - 1), dividingValues(numSides));
		fprintf('%s\n', promptMessage);
		% Give user an opportunity to bail out if they want to.
		titleBarCaption = 'Continue?';
		button = questdlg(promptMessage, titleBarCaption, 'Continue', 'Quit', 'Continue');
		if strcmpi(button, 'Quit')
			return;
		end
	end
	uiwait(helpdlg('Done with demo!'));
catch ME
	errorMessage = sprintf('Error in function %s() at line %d.\n\nError Message:\n%s', ...
		ME.stack(1).name, ME.stack(1).line, ME.message);
	fprintf(1, '%s\n', errorMessage);
	uiwait(warndlg(errorMessage));
end

%----------------------------------------------------------------------------------------------------------------------------------
% Creates an image with a specified number of circles, triangles, rectangles, and pentagons
function [binaryImage, numSides] = CreateDemoImage()
try
	rows = 2048;
	columns = round(rows * 3/4); % 4/3 aspect ratio.
	figure;
	
	% Create an image and add in some triangles at various angles and various sizes.
	binaryImage = false(rows, columns);
	numShapesToPlace = 3;
	for numSides = 3 : 6
		shapesPlacedSoFar = 0;
		centroidToVertexDistance = [.04*rows, 0.1*rows];
		% Define fail-safe parameters.
		maxNumberOfAttempts = 50;
		numberOfAttempts = 0;
		while shapesPlacedSoFar < numShapesToPlace && numberOfAttempts < maxNumberOfAttempts
			thisBinaryImage = CreatePolygon(numSides, centroidToVertexDistance, rows, columns);
			% Sometimes two polygons will be next to each other but not overlapping.
			% However bwlabel() and bwconncomp() would consider those two regions as being the same region.
			% To check for and prevent that kind of situation (which happened to me once),
			% we need to dilate the binary image by one layer before checking for overlap.
			dilatedImage = imdilate(thisBinaryImage, true(9));
			% See if any pixels in this binary image overlap any existing pixels.
			overlapImage = binaryImage & dilatedImage;
			if ~any(overlapImage(:))
				% No pixels overlap, so OR in this image.
				binaryImage = binaryImage | thisBinaryImage;
				shapesPlacedSoFar = shapesPlacedSoFar + 1;
			else
				fprintf('Skipping attempt %d because of overlap.\n', numberOfAttempts);
			end
			numberOfAttempts = numberOfAttempts + 1;
		end
	end
	
	% Create an image and add in some circles at various angles and various sizes.
	numShapesToPlace = 3;
	shapesPlacedSoFar = 0;
	numSides = 30; % Pretty round
	centroidToVertexDistance = [.04*rows, 0.1*rows];
	while shapesPlacedSoFar < numShapesToPlace && numberOfAttempts < maxNumberOfAttempts
		thisBinaryImage = CreatePolygon(numSides, centroidToVertexDistance, rows, columns);
		% See if any pixels in this binary image overlap any existing pixels.
		overlapImage = binaryImage & thisBinaryImage;
		if ~any(overlapImage(:))
			% No pixels overlap, so OR in this image.
			binaryImage = binaryImage | thisBinaryImage;
			shapesPlacedSoFar = shapesPlacedSoFar + 1;
		end
		numberOfAttempts = numberOfAttempts + 1;
	end
	
	% Pass back the number of sides we decided to use.
	numSides = [3:6, 30];
catch ME
	errorMessage = sprintf('Error in function %s() at line %d.\n\nError Message:\n%s', ...
		ME.stack(1).name, ME.stack(1).line, ME.message);
	fprintf(1, '%s\n', errorMessage);
	uiwait(warndlg(errorMessage));
end

%----------------------------------------------------------------------------------------------------------------------------------
% Create a single polygon with the specified number of sides in a binary image of the specified number of rows and columns.
% centroidToVertexDistance is the distance from the centroid to each vertex.
% If centroidToVertexDistance is a length 2 vector, then this indicated the minimum and maximum size range and
% it will create a random size polygon between the min and max distance.
function binaryImage = CreatePolygon(numSides, centroidToVertexDistance, rows, columns)
try
	% Get the range for the size from the center to the vertices.
	if length(centroidToVertexDistance) > 1
		% Random size between a min and max distance.
		minDistance = centroidToVertexDistance(1);
		maxDistance = centroidToVertexDistance(2);
	else
		% All the same size.
		minDistance = centroidToVertexDistance;
		maxDistance = centroidToVertexDistance;
	end
	thisDistance = (maxDistance - minDistance) * rand(1) + minDistance;
	
	% Create a polygon around the origin
	for v = 1 : numSides
		angle = v * 360 / numSides;
		x(v) = thisDistance * cosd(angle);
		y(v) = thisDistance * sind(angle);
	end
	% Make last point the same as the first
	x(end+1) = x(1);
	y(end+1) = y(1);
	% 	plot(x, y, 'b*-', 'LineWidth', 2);
	% 	grid on;
	% 	axis image;
	
	% Rotate the coordinates by a random angle between 0 and 360
	angleToRotate = 360 * rand(1);
	rotationMatrix = [cosd(angleToRotate), sind(angleToRotate); -sind(angleToRotate), cosd(angleToRotate)];
	% Do the actual rotation
	xy = [x', y']; % Make a numSides*2 matrix;
	xyRotated = xy * rotationMatrix; % A numSides*2 matrix times a 2*2 = a numSides*2 matrix.
	x = xyRotated(:, 1); % Extract out the x as a numSides*2 matrix.
	y = xyRotated(:, 2); % Extract out the y as a numSides*2 matrix.
	
	% Get a random center location between centroidToVertexDistance and (columns - centroidToVertexDistance).
	% This will ensure it's always in the image.
	xCenter = thisDistance + (columns - 2 * thisDistance) * rand(1);
	% Get a random center location between centroidToVertexDistance and (rows - centroidToVertexDistance).
	% This will ensure it's always in the image.
	yCenter = thisDistance + (rows - 2 * thisDistance) * rand(1);
	% Translate the image so that the center is at (xCenter, yCenter) rather than at (0,0).
	x = x + xCenter;
	y = y + yCenter;
	binaryImage = poly2mask(x, y, rows, columns);
catch ME
	errorMessage = sprintf('Error in function %s() at line %d.\n\nError Message:\n%s', ...
		ME.stack(1).name, ME.stack(1).line, ME.message);
	fprintf(1, '%s\n', errorMessage);
	uiwait(warndlg(errorMessage));
end

%----------------------------------------------------------------------------------------------------------------------------------
% https://en.wikipedia.org/wiki/Regular_polygon
% Which says A = (1/4) * n * s^2 * cot(pi/n)
function circularity = ComputeTheoreticalCircularity(numSides)
try
	sideLength = 1;
	perimeter = numSides * sideLength;
	area = (1/4) * numSides * sideLength^2 / tan(pi / numSides);
	circularity = (4 * pi * area) / perimeter ^2;
catch ME
	errorMessage = sprintf('Error in function %s() at line %d.\n\nError Message:\n%s', ...
		ME.stack(1).name, ME.stack(1).line, ME.message);
	fprintf(1, '%s\n', errorMessage);
	uiwait(warndlg(errorMessage));
end

%----------------------------------------------------------------------------------------------------------------------------------
% Makes a figure with the theoretical circularity for a bunch of different number of sides plotted.
function dividingValues = PlotTheoreticalCircularity()
try
	dividingValues = []; % Initialize
	fontSize = 24;
	% For reference, compute the theoretical circularity of a bunch of regular polygons with different number of sides.
	fprintf('Number of Sides     Theoretical Circularity\n');
	% Define an array with the number of sides we want to compute the circularity for.
	numSides = 3 : 16;
	for k = 1 : length(numSides)
		thisSideLength = numSides(k);
		% Compute the theoretically perfect circularity, if the polygons were perfect instead of digitized.
		circularity(k) = ComputeTheoreticalCircularity(thisSideLength);
	end
	% Plot the theoretical circularities on the curve with a cross.
	plot(numSides, circularity, 'b+-', 'LineWidth', 2, 'MarkerSize', 20);
	grid on;
	hold on;
	xl = xlim(); % Get left and right x coordinates of the graph.
	% Plot theoretical lines in dark red.
	darkRed = [0.85, 0, 0];
	for k = 1 : length(numSides)
		thisSideLength = numSides(k);
		% Make theoretical line on the plot in a magenta color.
		line(xl, [circularity(k), circularity(k)], 'Color', darkRed, 'LineWidth', 2);
		fprintf('     %d                  %f\n', thisSideLength, circularity(k));
		if k <= 7 % Only print text if it's not too crowded and close together.
			% Make text with the true value
			message = sprintf('Theoretical value for %d sides = %.4f', thisSideLength, circularity(k));
			text(xl(1)+0.1, circularity(k) + 0.005, message, 'Color', darkRed);
		end
	end
	
	% Set up figure properties:
	% Enlarge figure to full screen.
	set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
	% Get rid of tool bar and pulldown menus that are along top of figure.
	set(gcf, 'Toolbar', 'none', 'Menu', 'none');
	% Give a name to the title bar.
	set(gcf, 'Name', 'Demo by ImageAnalyst', 'NumberTitle', 'Off')
	drawnow; % Make it display immediately.
	
	title('Theoretical Circularities', 'FontSize', fontSize, 'Interpreter', 'None');
	xlabel('Number of Sides', 'FontSize', fontSize);
	ylabel('True Circularity', 'FontSize', fontSize);
	% Make tick marks every 0.1
	ax = gca;
	ax.XTick = 2 : 16;
	ax.YTick = 0.6 : 0.02 : 1.2;
	ax.YAxis.TickLabelFormat = '%.2f';
	
	% Get the midpoint between one circularity and the one for the next higher number of sides.
	dividingValues = conv(circularity, [1, 1]/2, 'valid');
	% Prepend two zeros so that we can use this array as a lookup table where we pass in
	% the number of sides as an index and it tells us the dividing value between
	% that number of sides and one more than that.
	% For example, right now dividingValues(1) gives us the dividing value between 3 and 4
	% and dividingValues(3) gives us the dividing value between 5 and 6 (instead of between 3 and 4).
	dividingValues = [0, 0, dividingValues];
	% Now dividingValues(3) will give us the dividing value between 3 and 4.
	
	% Put up red horizontal lines at the dividing values
	hold on;
	xl = xlim();
	darkGreen = [0, 0.5, 0];
	for k = 1 : length(numSides)-1
		thisSideLength = numSides(k);
		thisDividingValue = dividingValues(thisSideLength);
		h = line(xl, [thisDividingValue, thisDividingValue], 'Color', darkGreen, 'LineWidth', 2, 'LineStyle', '--');
% 		h.LineStyle = '--';
		% For the first 6, print the dividing value at the left just above the line.
		% After 6 it would get too crowded
		if k <= 6
			theLabel = sprintf('Dividing value = %.4f', thisDividingValue);
			text(xl(1)+0.1, thisDividingValue + 0.005, theLabel, 'Color', darkGreen);
		end
	end
	
catch ME
	errorMessage = sprintf('Error in function %s() at line %d.\n\nError Message:\n%s', ...
		ME.stack(1).name, ME.stack(1).line, ME.message);
	fprintf(1, '%s\n', errorMessage);
	uiwait(warndlg(errorMessage));
end

