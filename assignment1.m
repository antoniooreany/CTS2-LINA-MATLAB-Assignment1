function [] = assignment1(rootPath)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% rootPath = 'C:\Program Files\MATLAB\R2019a\bin\Assignments_CTS2_Gorshkov_Anton\1\';

srcFileName = strcat(rootPath,'src.txt');

srcFileID = fopen(srcFileName,'r');

xSrcStr = fgetl(srcFileID);
ySrcStr = fgetl(srcFileID);
xSrcNum = str2num(xSrcStr);
ySrcNum = str2num(ySrcStr);
fclose(srcFileID);

plot(xSrcNum, ySrcNum);

complexSrc = complex(xSrcNum,ySrcNum);

disp('Press any key for transformation')  % Press a key here.You can see the message 'Paused: Press any key' in        % the lower left corner of MATLAB window.
pause;

transformationMagnitude = 2;
transformationAngleDeg = 45;
transformationAngleRad = deg2rad(transformationAngleDeg);
transformationComlpex = transformationMagnitude*exp(transformationAngleRad*1i);

complexDst = complexSrc * transformationComlpex;
xDstNum = real(complexDst);
yDstNum = imag(complexDst);

plot(xDstNum, yDstNum);

dstFileName = strcat(rootPath,'dst.txt');

dstFileID = fopen(dstFileName, 'w');

xDstStr = num2str(xDstNum);
yDstStr = num2str(yDstNum);

dstData = [xDstNum; yDstNum];

fprintf(dstFileID,'%6s %12s\n','xDstStr','yDstStr');
fprintf(dstFileID,'%6.2f %12.8f\n',dstData);
fclose(dstFileID);



end

