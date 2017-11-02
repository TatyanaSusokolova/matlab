%Фільтрація досліджуваного сигналу 
 % L = 64
fs = 200;
N =  400;
t = (0:(N-1))/fs; 
v = 2*randn(size(t));  
s = sin(2*pi*10*t) + sin(2*pi*20*t);
x = s+v;
a = 1;
L = 64; % порядок фільтра
w = wiener_hopf(x, s, L);% обчислення коефіцієнтів
b = w;
y = filter(b,a,s);
figure();
subplot(3,1,1), plot(t,x);
title('x(n), L = 64');
xlabel('Час'), ylabel('Амплітуда');
subplot(3,1,2), plot(t,y);
title('y(n), L = 64');
xlabel('Час'), ylabel('Амплітуда');
 % АЧХ фільтру Вінера
n = 512;    % кількість точок, що розраховуються
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(3,1,3), plot(w/(2*pi)*fs, mag);
title('АЧХ, L = 64');
xlabel('Частота'), ylabel('Амплітуда');
 % L = 128
fs = 200;
N =  400;
t = (0:(N-1))/fs; 
v = 2*randn(size(t));  
s = sin(2*pi*10*t) + sin(2*pi*20*t);
x = s+v;
L = 128;    % порядок фільтра
w = wiener_hopf(x, s, L);% обчислення коефіцієнтів
b = w;
a = 1;
y = filter(b,a,s);
figure();
subplot(3,1,1), plot(t,x);
title('x(n), L = 128');
xlabel('Час'), ylabel('Амплітуда');
subplot(3,1,2), plot(t,y);
title('y(n), L = 128');
xlabel('Час'), ylabel('Амплітуда');
 % АЧХ фільтру Вінера
n = 512;    % кількість точок, що розраховуються
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(3,1,3), plot(w/(2*pi)*fs, mag);
title('АЧХ, L = 128');
xlabel('Частота'), ylabel('Амплітуда');
 % L = 256
fs = 200;
N =  400;
t = (0:(N-1))/fs; 
v = 2*randn(size(t));  
s = sin(2*pi*10*t) + sin(2*pi*20*t);
x = s+v;
a = 1;
L = 256;    % порядок фільтра
w = wiener_hopf(x, s, L);% обчислення коефіцієнтів
b = w;
y = filter(b,a,s);
figure();
subplot(3,1,1), plot(t,x);
title('x(n), L = 256');
xlabel('Час'), ylabel('Амплітуда');
subplot(3,1,2), plot(t,y);
title('y(n), L = 256');
xlabel('Час'), ylabel('Амплітуда');
 % АЧХ фільтру Вінера
n = 512;    % кількість точок, що розраховуються
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(3,1,3), plot(w/(2*pi)*fs, mag);
title('АЧХ, L = 256');
xlabel('Частота'), ylabel('Амплітуда');



