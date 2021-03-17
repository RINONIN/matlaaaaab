%num=1; 
%den=[1 3 2 0]; 
%den=conv([1,0],conv([1,1],[1,2])); 
%rlocus(num,den), 
%[K,poles]=rlocfind(num,den)

%num=[2 5 1]; 
%den=[1 2 3]; 
%rlocus(num,den);
%sgrid%格栅线
%试用根轨迹方法求解其临界稳定增益 。
num=1;
den=conv([2,1],conv([1,1],[0.1,1]));
rlocus(num,den);
[K,poles]=rlocfind(num,den);

disp('K=');
disp(K);
%根轨迹与虚轴交点处的增益K=6，这说明当K＜6时系统稳定；当K＞6时，
%系统不稳定。利用rlocfind()函数也可找出根轨迹从实轴上的分离点处的增
%益K=0.38，这说明当0＜ K ＜0.38时，系统为单调衰减稳定，当0.38＜ K
%＜6时系统为振荡衰减稳定。