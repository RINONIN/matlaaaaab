[i,map]=imread('1.jpg');
ia=maketform('affine',[cosd(30) -sind(30) 0; sind(30) cosd(30) 0; 0 0 1]');%������ת�����ṹ��
ia=imtransform(i,ia);%ʵ��ͼ����ת
ib=maketform('affine',[5 0 0;0 20 0;0 0 1]');%�������Ų����ṹ��
ib=imtransform(i,ib);%ʵ��ͼ�������
xform=[1 0 55; 0 1 255; 0 0 1]';%����ƽ�Ʋ����ṹ��
ic=maketform('affine',xform);%ʵ��ͼ���ƽ��
ic=imtransform(i,ic,'Xdata',[1 (size(i,2)+xform(3,1))],'Ydata',[1 (size(i,1)+xform(3,2))],'FillValues',60);%����ͼ��ƽ�ƣ�size(i,2)��ʾԭʼͼ��������xform(3,1)��ʾ�����е�һ��
id=maketform('affine',[1 4 0;2 1 0;0 0 1]');%����ͼ�������б�����ṹ��
id=imtransform(i,id,'FillValues',60);%ʵ��ͼ�������б�
set(0,'defaultFigurePosition',[100,100,1000,500]);
set(0,'defaultFigureColor',[1 1 1]);
figure
subplot(121),imshow(ia),axis on;
subplot(122),imshow(ib),axis on;
figure
subplot(121),imshow(ic),axis on;
subplot(122),imshow(id),axis on;
