function processEllipse(filename, destfilename)
    I = imread(filename);
    A=imresize(I,[256,256]);
    alpha=0.8;
    sigma=0.8;
    alpha=0.5;
    B=locallapfilt(A,sigma,alpha);
    C=histeq(B);
    E = edge(im2bw(C),'canny');
    % override some default parameters
    params.minMajorAxis = 20;
    params.maxMajorAxis = 210;
    try
        % note that the edge (or gradient) image is used
        bestFits = ellipseDetection(E, params);
        fprintf('Output %d best fits.\n', size(bestFits,1));
        figure;
        image(A);
        %ellipse drawing implementation: http://www.mathworks.com/matlabcentral/fileexchange/289 
        %ellipse(bestFits(:,3),bestFits(:,4),bestFits(:,5)*pi/180,bestFits(:,1),bestFits(:,2),'k');

        ra=mean(bestFits(:,3));
        rb=mean(bestFits(:,4));
        theta=min(bestFits(:,5)*pi/180);
        x0=mean(bestFits(:,1));
        y0=mean(bestFits(:,2));
        %ellipse(ra,rb,theta,x0,y0,'k');
        leftX=int32(min([x0-(ra*cos(theta)), x0+(ra*cos(theta)),x0-(rb*sin(theta)),x0+(rb * sin(theta))]));
        rightX=int32(max([x0-(ra*cos(theta)), x0+(ra*cos(theta)),x0-(rb*sin(theta)),x0+(rb * sin(theta))]));
        bottomY=int32(min([y0-(ra*sin(theta)),y0+(ra*sin(theta)),y0+(rb*cos(theta)),y0-(rb*cos(theta))]));
        topY=int32(max([y0-(ra*sin(theta)),y0+(ra*sin(theta)),y0+(rb*cos(theta)),y0-(rb*cos(theta))]));
        width=rightX-leftX;
        height=topY-bottomY;
        fprintf("x0=%d, y0=%d, theta=%d,width=%d, height=%d\n",x0,y0,theta,width,height);
        %rectangle('Position',[leftX, bottomY,abs(width),abs(height)],'FaceColor','r');

        MaskBW=im2bw(A);
        OrigPic=MaskBW;
        MaskBW(:,:)=0;
        MaskBW(bottomY:topY,leftX:rightX)=1;
        fprintf("leftx:%d,bottomy:%d,rightx:%d,topy:%d\n",leftX,bottomY,rightX,topY);
        finalPic=MaskBW & OrigPic;
        fprintf("Identified ellipse\n");
        %imshow(finalPic);
		imwrite(finalPic, destfilename,'png');
    catch
        fprintf("Couldn't identify ellipse ... fallback to orig pic\n");
        OrigPic=im2bw(A);
        %imshow(OrigPic);
		imwrite(OrigPic, destfilename, 'png');
    end
end