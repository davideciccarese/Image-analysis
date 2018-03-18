%Davide Ciccarese
%process multiples images in batch mode by clicking a target folder

clc;
clear all;
close all;

%------------------------Click on the desired folder---------------------

%It will ask you to search the folder, then click on the tif and click open
[file d] = uigetfile('*.tif','Select one file for the analysis...');
cd(d); % Go to selected folder

file=dir([d, '/', '*.tif']); % Read all specified files in selected folder

for i=1:length(file) %loop over all the picture

%Read your images. For multiple channels images, to select the channel you need, change the number I = imread([d,file(i).name],1);
I = imread([d,file(i).name]); %now your imege is ready to be process, the following code has to stay in the loop.

%%%INSERT YOUR CODE HERE


end