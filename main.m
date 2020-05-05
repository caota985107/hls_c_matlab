close all;
%% read Binary data
F=fopen("t0.jpg");
img_bdata=fread(F);%Read every 2 bytes sequentially
img_hex = dec2hex(img_bdata);

%% RGB data
img_rgb=imread('t0.jpg');
[w,h,ch] = size(img_rgb);
img_red=zeros(w,h,3); 
img_red(:,:,1)=img_rgb(:,:,1);
img_blue=zeros(w,h,3); 
img_blue(:,:,2)=img_rgb(:,:,2);
img_green=zeros(w,h,3); 
img_green(:,:,3)=img_rgb(:,:,1);

figure;
image(img_red/255);
figure;
image(img_blue/255);
figure;
image(img_green/255);

