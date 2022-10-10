function testpreprocess()

	Files=["0000001.png"];

	srcDir='D:\Project_2-2\RSIP_project\New_Paper_VIT\obj_classes\improperly_closed_manhole\';
	destDir='D:\Project_2-2\RSIP_project\New_Paper_VIT\processed\';

   	for i=1:length(Files)
		fileName=strcat(Files(i));
		srcFileName=strcat(srcDir,fileName);
		destFileName=strcat(destDir,fileName);
		processEllipse(srcFileName,destFileName);
	end
	
end