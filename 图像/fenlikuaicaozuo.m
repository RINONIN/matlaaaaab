I = imread( '1.jpg' ); %输入图像
fun = @(block_struct) imrotate (block_struct.data, 30) ;%获取分离块操作的函数句柄
I1 = blockproc(I, [64 64], fun); %进 行分离块操作
fun = @(block_struct) std2 (block_struct.data) ; %获取获取 分离块操作的函数句柄
I2 = blockproc(I, [32 32], fun) ;%进行分离块操作
fun = @(block_struct) block_struct.data(:,:,[3 1 2]);%获取分 离块操作的函数句柄
blockproc(I, [100 100], fun,'Destination' ,' brg_1.kpg' ) ;%进行分离块操作
set (0,'def aultFigurePosition' , [100, 100, 1000, 500]) ;%修改图形图像位置的默认设置
set (0,'def aultFigureColor',[1 1 1])%修改图形背 景颜色的设置
figure%显示处理后结果
subplot (131), imshow(I1);
subplot (132), imshow(I2, []);
subp1ot (133), imshow( brg_peppers.tif' );
