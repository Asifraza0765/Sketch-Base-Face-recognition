function [LBP] = LocalBinaryPattern (gray_image)

%[LBP] = LocalBinaryPattern (gray_image)
% this function calc local binary pattern in a neighborhood
% instance by one radius and eight points
%
% example1:
%
% f = [151    79    17
%      121   101    10
%      139    88   108];
% [LBP] = LocalBinaryPattern (f);
% figure
% subplot(121),imshow(f, []), title('orginal mat')
% subplot(122),imshow(LBP, []), title('LBP mat')
%
% example2:
%
% cameraman = imread('cameraman.tif');
% [cameraman_LBP] = LocalBinaryPattern (cameraman);
% figure
% subplot(121),imshow(cameraman, []), title('cameraman')
% subplot(122),imshow(cameraman_LBP, []), title('LBP mat')
%
% ---------------------------------------------

% ---------------------------------------------

%
% You can freely use the source files for commercial and academic research.

if size(gray_image, 3) == 3
    gray_image = rgb2gray(gray_image);
end
LBP=extractLBPFeatures(gray_image);


%points = detectSURFFeatures(gray_image);
% figure; imshow(gray_image); hold on;
 %   plot(points.selectStrongest(10),'showOrientation',true);
%L = 2*3 + 1; %% The size of the LBP label
%C = round(L/2);
%Input_Im = uint8(Input_Im);
%row_max = size(Input_Im,1)-L+1;
%col_max = size(Input_Im,2)-L+1;
%LBP = zeros(row_max, col_max);
%for i = 1:row_max
    %for j = 1:col_max
     %   A = Input_Im(i:i+L-1, j:j+L-1);
    %    A = A+1-A(C,C);
   %     A(A>0) = 1;
  %      LBP(i,j) = A(C,L) + A(L,L)*2 + A(L,C)*4 + A(L,1)*8 + A(C,1)*16 + A(1,1)*32 + A(1,C)*64 + A(1,L)*128;
 %   end
%end

end