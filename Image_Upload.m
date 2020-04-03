%taking an image
%clc
%clear all;
%close all;
%[fname, path]=uigetfile('.jpg', 'Open a file');
%fname=strcat(path,fname);
for i=1:(CHUK.Count)
im=imread(CHUK.ImageLocation{i});
im=imresize(im,[128 128]);
im=rgb2gray(im);
%im=edge(im,'sobel');
%im=imnoise(im,'gaussian');
%im=imcomplement(im);

%im=imgaussfilt(im,2);
%im=255+im;
%c=input('Enter te class');
%feature Extraction

FLbp=desc_MBC(im);
FHog=desc_IWBC(im);
FHog1=desc_LTrP(im);
%FLbp=pca(FLbp);
%mshow(im);
%F=Feature_extract(FLbp);
try
    load dbCHUCK;
    
       F=[FLbp FHog FHog1 i];
    dbCHUCK=[dbCHUCK;F];
    save dbCHUCK.mat dbCHUCK;
    
catch
    dbCHUCK=[FLbp FHog FHog1 i];

   %save label.mat label;
    save dbCHUCK.mat dbCHUCK;

end
end