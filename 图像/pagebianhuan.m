[i,map]=imread('1.jpg');
ia=maketform('affine',[cosd(30) -sind(30) 0; sind(30) cosd(30) 0; 0 0 1]');%创建旋转参数结构体
ia=imtransform(i,ia);%实现图像旋转
ib=maketform('affine',[5 0 0;0 20 0;0 0 1]');%创建缩放参数结构体
ib=imtransform(i,ib);%实现图像的缩放
xform=[1 0 55; 0 1 255; 0 0 1]';%创建平移参数结构体
ic=maketform('affine',xform);%实现图像的平移
ic=imtransform(i,ic,'Xdata',[1 (size(i,2)+xform(3,1))],'Ydata',[1 (size(i,1)+xform(3,2))],'FillValues',60);%进行图像平移，size(i,2)表示原始图像列数，xform(3,1)表示第三行第一列
id=maketform('affine',[1 4 0;2 1 0;0 0 1]');%创建图像整体切变参数结构体
id=imtransform(i,id,'FillValues',60);%实现图像整体切变
set(0,'defaultFigurePosition',[100,100,1000,500]);
set(0,'defaultFigureColor',[1 1 1]);
figure
subplot(121),imshow(ia),axis on;
subplot(122),imshow(ib),axis on;
figure
subplot(121),imshow(ic),axis on;
subplot(122),imshow(id),axis on;
