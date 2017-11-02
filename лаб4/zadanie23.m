% ������� ����������� �������. Գ�������� ������������� �������
L = 128;
mu = 0.0001;
fs = 200;
N =  400;
t = (0:(N-1))/fs; 
v = 2*randn(size(t));  
s = sin(2*pi*10*t);
x = s+v;

[y,e,b] = lms(x,s,mu,L);
a = 1;
% ������� ���������� ����������
figure();
subplot(2,1,1), plot(t,y);
title('y(n)');
xlabel('���'), ylabel('��������');
% ----- ��� ����������� �������
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag), grid on;
title('���');
xlabel('�������'), ylabel('��������');
