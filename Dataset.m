% Start with a folder and get a list of all subfolders.
% Finds and prints names of all PNG, JPG, and TIF images in 
% that folder and all of its subfolders.
% Similar to imageSet() function in the Computer Vision System Toolbox: http://www.mathworks.com/help/vision/ref/imageset-class.html
clc;    % Clear the command window.
workspace;  % Make sure the workspace panel is showing.
format long g;
format compact;

% Define a starting folder.
start_path = fullfile(matlabroot, 'E:\LBP');
% Ask user to confirm or change.
topLevelFolder = uigetdir(start_path);
if topLevelFolder == 0
	return;
end
% Get list of all subfolders.
allSubFolders = genpath(topLevelFolder);
% Parse into a cell array.
remain = allSubFolders;
listOfFolderNames = {};
while true
	[singleSubFolder, remain] = strtok(remain, ';');
	if isempty(singleSubFolder)
		break;
	end
	listOfFolderNames = [listOfFolderNames singleSubFolder];
end
numberOfFolders = length(listOfFolderNames)


for k = 1 : numberOfFolders
	% Get this folder and print it out.
	thisFolder = listOfFolderNames{k};
	fprintf('Processing folder %s\n', thisFolder);
	

	filePattern = sprintf('%s/*.jpg', thisFolder);
end
CHUK=imageSet(thisFolder,'recursive');
%%Display Image from dataset
%imshow(read(ABC(1),1));
%%Display all picture in data set
%montage(ABC(1).ImageLocation);
%% Split Training and Testing data
%[training,test]=partition(ABC,[0.8,0.2]);
