 ctrb()%求能控性矩阵
 obsv()%求能观测性矩阵
 gram()%求能控性或能观测性Gram矩阵
 dgram()%求离散系统的能控性或能观测性Gram矩阵
 ctrbf()%将系统按能控和不能控性进行分解
 obsvf()%将系统按能观测和不能观测性进行分解
 
% 在MATLAB中，可利用ctrb()和obsc()函数直接求出能控性和能观测性矩阵，从
%而确定系统的状态能控性和能观测性。它们的调用格式分别为
%Uc= ctrb(A,B)
%Vo= obsv(A,C)
%其中，A,B,C为系统的各矩阵，Uc和Vo分别为能控性矩阵和能观测性矩阵。
