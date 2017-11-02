%Գ�������� ������������� ������� 
 % L = 64
fs = 200;
N =  400;
t = (0:(N-1))/fs; 
v = 2*randn(size(t));  
s = sin(2*pi*10*t) + sin(2*pi*20*t);
x = s+v;
a = 1;
L = 64; % ������� �������
w = wiener_hopf(x, s, L);% ���������� �����������
b = w;
y = filter(b,a,s);
figure();
subplot(3,1,1), plot(t,x);
title('x(n), L = 64');
xlabel('���'), ylabel('��������');
subplot(3,1,2), plot(t,y);
title('y(n), L = 64');
xlabel('���'), ylabel('��������');
 % ��� ������� ³����
n = 512;    % ������� �����, �� ��������������
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(3,1,3), plot(w/(2*pi)*fs, mag);
title('���, L = 64');
xlabel('�������'), ylabel('��������');
 % L = 128
fs = 200;
N =  400;
t = (0:(N-1))/fs; 
v = 2*randn(size(t));  
s = sin(2*pi*10*t) + sin(2*pi*20*t);
x = s+v;
L = 128;    % ������� �������
w = wiener_hopf(x, s, L);% ���������� �����������
b = w;
a = 1;
y = filter(b,a,s);
figure();
subplot(3,1,1), plot(t,x);
title('x(n), L = 128');
xlabel('���'), ylabel('��������');
subplot(3,1,2), plot(t,y);
title('y(n), L = 128');
xlabel('���'), ylabel('��������');
 % ��� ������� ³����
n = 512;    % ������� �����, �� ��������������
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(3,1,3), plot(w/(2*pi)*fs, mag);
title('���, L = 128');
xlabel('�������'), ylabel('��������');
 % L = 256
fs = 200;
N =  400;
t = (0:(N-1))/fs; 
v = 2*randn(size(t));  
s = sin(2*pi*10*t) + sin(2*pi*20*t);
x = s+v;
a = 1;
L = 256;    % ������� �������
w = wiener_hopf(x, s, L);% ���������� �����������
b = w;
y = filter(b,a,s);
figure();
subplot(3,1,1), plot(t,x);
title('x(n), L = 256');
xlabel('���'), ylabel('��������');
subplot(3,1,2), plot(t,y);
title('y(n), L = 256');
xlabel('���'), ylabel('��������');
 % ��� ������� ³����
n = 512;    % ������� �����, �� ��������������
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(3,1,3), plot(w/(2*pi)*fs, mag);
title('���, L = 256');
xlabel('�������'), ylabel('��������');



