function [] = test()

x = 0:.1:1;
A = [x; exp(x)];

% fileID = fopen('exp.txt','w');
fprintf('%6s %12s\n','x','exp(x)');
fprintf('%6.2f %12.8f\n',A);
% fclose(fileID);

% matrix=[1 2 3 4 5;6 7 8 9 10; 11 12 13 14 15; 16 17 18 19 20];
% disp(matrix);
% 
% matrix=rot90(matrix,3);
% disp(matrix);

% matrix(:,[1,2])=matrix(:,[2,1]);
% disp(matrix);
% 
% matrix([1,2],:)=matrix([2,1],:);
% disp(matrix);

% copy_matrix=matrix(:,:);
% disp(copy_matrix);
% 
% matrix(2,:)=copy_matrix(1,:);
% disp(matrix);
% 
% matrix(1,:)=copy_matrix(2,:);
% disp(matrix);

Len = 12;
% V   = sprintfc('V%d', 1:Len);
% disp(V);

V = compose('V%d', 1:Len);
A = cell2mat(V);

fprintf('%s \n',A);
% disp(A);
% title(V{i});


% for i = 1:10
%     plot(rand(1,10))
%    title(sprintf('X%d',i))
%    drawnow
%    pause(0.5)
% end

end

