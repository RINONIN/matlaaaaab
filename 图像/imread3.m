%1.常见图像格式读取:
l=imread( 'filename' ,'fmt')%('filename.fmt')
[X,map]=imread('filename', 'fmt')%('filename.fmt')
[]-imread('filename')
[]=imread(URL)
%2.特殊图像格式读取
[]=imread('filename',idx)%idx为整数，文件中的第几幅图像
[]=imread(,'frames' ,idx)%gif
[]=imread(,'BackgroundColor',BG)%png
[]-imread('filename' ref)%
[]=imread(.... ,'Param1', value1, 'Param2', value2, ..
