ecg = load('ecg2x60.dat');
fs = 200;
t = (0:length(ecg)-1)/fs;
%mu = 0.1
mu = 0.1;
f = 60;
d = [cos(2*pi*f*t); sin(2*pi*f*t)];
[y,e,w] = lms60(ecg,d,mu);    %e - ������������ ������, � - �������� ������
b = w;
a = 1;
figure();
subplot(3,1,1), plot(t, y);
title('y(n), mu = 0.1');
xlabel('�������'), ylabel('��������');
subplot(3,1,2), plot(t,e);
title('e(n), mu = 0.1');
xlabel('���'), ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(3,1,3), plot(w/(2*pi)*fs, mag), grid on;
title('���, mu = 0.1');
xlabel('�������'), ylabel('��������');
%mu = 0.01
mu = 0.01;
f = 60;
d = [cos(2*pi*f*t); sin(2*pi*f*t)];
[y,e,b] = lms60(ecg,d,mu);
a = 1;
figure();
subplot(3,1,1), plot(t, y);
title('y(n), mu = 0.01');
xlabel('�������'), ylabel('��������');
subplot(3,1,2), plot(t,e);
title('e(n), mu = 0.01');
xlabel('���'), ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(3,1,3), plot(w/(2*pi)*fs, mag), grid on;
title('���, mu = 0.01');
xlabel('�������'), ylabel('��������');
%mu = 0.001
mu = 0.001;
f = 60;
d = [cos(2*pi*f*t); sin(2*pi*f*t)];
[y,e,w] = lms60(ecg,d,mu);
b = w;
a = 1;
figure();
subplot(3,1,1), plot(t, y);
title('y(n), mu = 0.001');
xlabel('�������'), ylabel('��������');
subplot(3,1,2), plot(t,e);
title('e(n), mu = 0.001');
xlabel('���'), ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(3,1,3), plot(w/(2*pi)*fs, mag), grid on;
title('���, mu = 0.001');
xlabel('�������'), ylabel('��������');
%mu = 0.0001
mu = 0.0001;
f = 60;
d = [cos(2*pi*f*t); sin(2*pi*f*t)];
[y,e,w] = lms60(ecg,d,mu);
b = w;
a = 1;
figure();
subplot(3,1,1), plot(t, y);
title('y(n), mu = 0.0001');
xlabel('�������'), ylabel('��������');
subplot(3,1,2), plot(t,e);
title('e(n), mu = 0.0001');
xlabel('���'), ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(3,1,3), plot(w/(2*pi)*fs, mag), grid on;
title('���, mu = 0.0001');
xlabel('�������'), ylabel('��������');

