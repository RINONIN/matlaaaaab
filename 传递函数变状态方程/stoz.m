syms a s
%���촫�ݺ���
h = tf(5., [10,11,1]);
%Z�任
zh = c2d(h, 0.05,'zoh');
gg=zpk(zh);
%�õ����ӷ�ĸϵ��
[num den] = tfdata(zh, 'v');
%�õ��㼫��
[z, p, k] = tf2zpk(num, den);