%num=1; 
%den=[1 3 2 0]; 
%den=conv([1,0],conv([1,1],[1,2])); 
%rlocus(num,den), 
%[K,poles]=rlocfind(num,den)

%num=[2 5 1]; 
%den=[1 2 3]; 
%rlocus(num,den);
%sgrid%��դ��
%���ø��켣����������ٽ��ȶ����� ��
num=1;
den=conv([2,1],conv([1,1],[0.1,1]));
rlocus(num,den);
[K,poles]=rlocfind(num,den);

disp('K=');
disp(K);
%���켣�����ύ�㴦������K=6����˵����K��6ʱϵͳ�ȶ�����K��6ʱ��
%ϵͳ���ȶ�������rlocfind()����Ҳ���ҳ����켣��ʵ���ϵķ���㴦����
%��K=0.38����˵����0�� K ��0.38ʱ��ϵͳΪ����˥���ȶ�����0.38�� K
%��6ʱϵͳΪ��˥���ȶ���