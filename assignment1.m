function [] = assignment1()

% Write a MATLAB-function, that rotates an object O in the x-y-coordinate system of R2 by an
% angle alpha and stretches or shrinks it by a factor lambda. Both alpha and lambda are parameters of your function.
% The function you write needs to read the rectangular coordinates of the object O from a data file.
% The object is assumed to have only a finite number of vertices. Any two vertices are joined by a
% stright line.
% If the object, for example, is a triangle it can be described by three vertices, having coordinates
% Vi = (xi; yi), i = 1; 2; 3. Theese coordinates are organised as columns in a data file.
% V1 V2 V3
% x1 x2 x3
% y1 y2 y3
% Object O needs to be displayed graphically before and after its transformation. Your function also
% needs to be able to save the coordinates of the transformed object O1
% in an external data file in the
% described manner on demand.
% Test your generated MATLAB file with the following coordinates of an object O, having the
% following twelf vertices.
% -6 -6 -7 0 7 6 6 -3 -3 0 0 -6
% -7 2 1 8 1 2 -7 -7 -2 -2 -7 -7
% This object O needs to be rotated counter clockwise by alpha = 45 degrees and stretched by lambda = 2.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% hint: parameter rootPath = 'C:\Program Files\MATLAB\R2019a\bin\Assignments_CTS2_Gorshkov_Anton\1\';

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% srcFileName = strcat(rootPath,'src.txt');           % Initialize the full src file name
srcFileName = 'src.txt';                            % Initialize the full src file name

% TODO: Delete redundant "+"ses in the src-file. Does it still work? If
% don't, modify the function to work with this kind of data

srcFileID = fopen(srcFileName,'r');                 % Open the src file for reading

xSrcStr = fgetl(srcFileID);                         % Read the X-coordinates from the src file as a string
ySrcStr = fgetl(srcFileID);                         % Read the Y-coordinates from the src file as a string
fclose(srcFileID);                                  % Close the src file
xSrcNum = str2num(xSrcStr);                         % Convert X-coordinates into numbers
ySrcNum = str2num(ySrcStr);                         % Convert Y-coordinates into numbers

complexSrc = complex(xSrcNum,ySrcNum);              % Create a src-complex array for the next transformation

plot(complexSrc);                                   % Draw the src-object

disp('Press any key for transformation')            % Displaying 'Press any key for transformation'
pause;                                              % Wait for the pressing any key. Meanwhile we can see to the untransformed object

transformationMagnitude = 2;                                    % Transformation magnitude initialization
transformationAngleDeg = 45;                                    % Transformation angle in degree initialization
transformationAngleRad = deg2rad(transformationAngleDeg);       % Transformation angle in degree into radians convertion
transformationComlpex = transformationMagnitude*exp(transformationAngleRad*1i); % Transformation comlpex initialization

complexDst = complexSrc * transformationComlpex;    % Applying transformation into src-object using src-complex and transformation complex.
xDstNum = real(complexDst);
yDstNum = imag(complexDst);

hold on;            % retain plots in the current axes so that new plots added to the axes do not delete existing plots.
plot(complexDst);                                   % Draw the dst-object

% dstFileName = strcat(rootPath,'dst.txt');           % Initialize the full src file name
dstFileName = 'dst.txt';                            % Initialize the full src file name
dstFileID = fopen(dstFileName, 'w');                % Open the src file for reading
dstData = [xDstNum; yDstNum];                       % Create dst-coordinates matrix

% TODO: Format the table in the dst-file

fprintf(dstFileID,'%12s %12s\n','xDstStr','yDstStr');   % Write the header into dst-file
fprintf(dstFileID,'%6.6f %6.6f\n',dstData);             % Write the coordinates into dst-file
fclose(dstFileID);                                  % Close dst-file

hold off;       % set the hold state to off so that new plots added to the axes clear existing plots and reset all axes properties.

end

