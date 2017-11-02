% ���������� ��������� ��������� ���������� ��� ���� ������ �������
fs = 200;
N =  400;
t = (0:(N-1))/fs; 
v = 2*randn(size(t));  
s = sin(2*pi*10*t);
x = s+v;
%L = 256
L = 256;
mu = 0.0001;
[y,e,w] = lms(x,s,mu,L);
b = w;
a = 1;
% ������� ���������� ����������
figure();
subplot(2,1,1), plot(t,y);
title('y(n), L = 256');
xlabel('���'), ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag), grid on;
title('���, L = 256');
xlabel('�������'), ylabel('��������');
%L = 512
N =  800;
t = (0:(N-1))/fs; 
v = 2*randn(size(t));  
s = sin(2*pi*10*t);
x = s+v;
L = 512;
mu = 0.0001;
[y,e,w] = lms(x,s,mu,L);
b = w;
a = 1;
% ������� ���������� ����������
figure();
subplot(2,1,1), plot(t,y);
title('y(n), L = 512');
xlabel('���'), ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag), grid on;
title('���, L = 512');
xlabel('�������'), ylabel('��������');
%L = 1024
N =  1400;
t = (0:(N-1))/fs; 
v = 2*randn(size(t));  
s = sin(2*pi*10*t);
x = s+v;
L = 1024;
mu = 0.0001;
[y,e,w] = lms(x,s,mu,L);
b = w;
a = 1;
% ������� ���������� ����������
figure();
subplot(2,1,1), plot(t,y);
title('y(n), L = 1024');
xlabel('���'), ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag), grid on;
title('���, L = 1024');
xlabel('�������'), ylabel('��������');