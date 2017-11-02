%Գ�������� ������������� ������� 
fs = 200;
N =  400;
t = (0:(N-1))/fs; 
v = 2*randn(size(t));  
s = sin(2*pi*10*t) + sin(2*pi*20*t);
x = s+v;
L = 32; % ������� �������
w = wiener_hopf(x, s, L);% ���������� �����������
b = w;
a = 1;
y = filter(b,a,s);
figure();
subplot(3,1,1), plot(t,x);
title('x(n)');
xlabel('���'), ylabel('��������');
subplot(3,1,2), plot(t,s);
title('s(n)');
xlabel('���'), ylabel('��������');
subplot(3,1,3), plot(t,y);
title('y(n)');
xlabel('���'), ylabel('��������');
% ------ ��� ������� ³����
n = 512;    % ������� �����, �� ��������������
figure();
[h, w] = freqz(b,a,n);
mag = abs(h);
plot(w/(2*pi)*fs, mag);
title('���');
xlabel('�������'), ylabel('��������');

