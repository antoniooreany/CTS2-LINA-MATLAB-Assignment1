%count=inf;

%fid = fopen('test.bin','rb'); % opens the file for reading
%a = fread(fid, count, 'int16'); % reads _count_ elements and stores them in A.

%A = fread(fid, count, 'int16', 'ieee-be');


%fid = fopen('test.bin','rb');
%A = fread(fid, count, 'int16');

%fid = fopen('test1.bin','w');
%count = fwrite(fid, A, 'int16');




%fid = fopen('?C:\\Users\\User\\Documents\\MATLAB\\test.bin');
%fid = fopen('test.bin');

%delimiter  = char(' ');
%A = fscanf(fid, ['%f', delimiter]);
%A = dlmread('test.txt',delimiter); % call dlmread and specify a comma as the delimiter



%fclose(fid);


%A = importdata('test1.txt');

%A = dlmread('test.txt',' ') % call dlmread and specify a comma as the delimiter


%fileID = fopen('test.txt');
%Uz10=textscan(fileID,'%d:%d');
%Uz10=textscan(fileID,'%s');
%fclose(fileID);


% f = fopen('test.txt');
% c = textscan(f,'%s','delimiter','\n');
% fclose(f);
% d = cellfun(@(x)str2double(x),regexp(c{1},'(+|-)?\d+\.?\d*e?-?\d*','match'),'un',0);
% out = reshape(cell2mat(d(:)'),3,[])';

%test = regexp(c{1},'(\+|\-)\d+\.?\d*e?-?\d*','match');



% f = fopen('test1.txt');
% c = textscan(f,'%s','Delimiter',{'�� ','   ',';','*'});
% %'Delimiter',{';','*'}
% fclose(f);
% d = cellfun(@(x)str2double(x),regexp(c{1},'(\+ |\- )?\d+','match'),'un',0);
% out = reshape(cell2mat(d(:)'),3,[])';
%
% test = regexp(c{1},'(\+ |\- )?\d+','match');
%
% dbl = str2double('-6');
%
% t = c;
% tre = regexp(t{1}, '(\+|\-)?\d+','match');
% %disp(c(:));



% for i = 1:2 % point
%     for j = 1:12 % dimention
%         points(i,j) = d(j,i);
%     end
% end

%points = [d(1,1) d(2,1); d(1,2) d(2,2); d(1,3) d(2,3); d(1,4) d(2,4)];

% for i = 1:length(d)
%     disp(d{i,1,1});
% end


%  disp(length(d));


% for i = 1:length(d)
%     for j = 1:1
%         for k = 1:12
%             disp(d{i}(j,k));
%         end
%     end
% end






% for i = 1:2
%     for j = 1:12
%         disp(d{i}(1,j));
%     end
%     disp('******************************************************');
% end


% point = [d{1}(1,1) d{2}(1,1); d{1}(1,2), d{2}(1,2); d{1}(1,3), d{2}(1,3)];


% for j = 1:12
%      for i = 1:2
%         point(j,i) = d{i}(1,j); d{i}(1,j);
%      end
% end



% for i = 1:length(d)
%      for j = 1:length(d{i})
%         points(j,i) = d{i}(1,j);
%      end
% end

% disp(length(d));


%
% clc
% clear
% a=0;
% b=2;
% for i=3:10
% e(i-2)=10^-i;
% n(i-2)=(log(b-a)-log(e(i-2)))/log(2);
% hold on
% axis([0 10^-3 0 30])
% grid on
% plot(e(i-2),n(i-2),'.')
% end
% plot(e,n)


% for i = 1:length(d) % = 2 dimentions,
%     for j = 1:length(d{i}) % = 12 points
%         points(j,i) = d{i}(1,j);
%     end
% end

% for j = 1:length(d{1}) % =12 points
%     xs(j) = d{1}(1,j);
%     ys(j) = d{2}(1,j);
% end

% [x,y] = pol2cart(angleInRadians, magnitude);




% f = fopen('src.txt');
% c = textscan(f,'%s','Delimiter',{'�� ','   ',';','*'});
% fclose(f);
% d = cellfun(@(x)str2double(x),regexp(c{1},'(\+ |\- )?\d+','match'),'un',0);

% f = fopen('src.txt');
% c = textscan(f,'%s','Delimiter',{'�� ','   ',';','*'});
% fclose(f);
% d = cellfun(@(x)str2double(x),regexp(c{1},'(\+ |\- )?\d+','match'),'un',0);

% for j = 1:length(d{1}) % =12 points
%     x(j) = d{1}(1,j);
%     y(j) = d{2}(1,j);
% end

% if srcFileID < 0
%    error('!!!Could not open file!!!') ;
% end

% x = 0:.1:1;
% A = [x; exp(x)];
% fileID= fopen('exp.txt','w');
% fprintf(fileID,'%6s %12s\n','x','exp(x)');
% fprintf(fileID,'%6.2f %12.8f\n',A);
% fclose(fileID);

% srcFileName = 'src.txt';
% srcFileName = 'C:\Users\User\Documents\MATLAB\src.txt';

% if dstFileID < 0
%    error('!!!Could not open file for writing!!!') ;
% end

% fprintf('%6s %12s\n','xDstStr','yDstStr');
% fprintf('%6.2f %12.8f\n',dstData);

% prompt = 'Press "ENTER" to make a transformation:';
% answer = input(prompt);


% srcFileName = 'C:\Dropbox (Personal)\EU\Studying\CTS2\Linear Algebra\Matlab\AssignmentS_CTS2_Gorshkov_Anton\1src.txt';

rootPath = 'C:\Program Files\MATLAB\R2019a\bin\Assignments_CTS2_Gorshkov_Anton\1\';

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



















