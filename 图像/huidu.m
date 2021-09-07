
data = imread('3.png');
 
data
 
subplot(221);
 
imshow(data);
 
gdata = rgb2gray(data);
 
subplot(222);
 
imshow(gdata);
 
n = graythresh(gdata);
 

