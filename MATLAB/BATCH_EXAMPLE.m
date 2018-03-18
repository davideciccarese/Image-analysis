%Davide Ciccarese
%process multiples images in batch mode.

clc;
clear all;
close all; %

%If you change the computer: you can have already your path here
d=('/path/'); %LAPTOP
%d=('/path/'); %OFFICE
%If you want to selct each time the folder: see my other batch example

file=dir([d,'*.tif']); %list of all the file with tif extention

for i=1:length(file) %loop over all the picture

%Read your images. For multiple channels images, to select the channel you need, change the number I = imread([d,file(i).name],1);
I = imread([d,file(i).name]); %now your imege is ready to be process, the following code has to stay in the loop.

%%%INSERT YOUR CODE HERE


end