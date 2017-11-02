% Дослідження залежності часу адаптації від коефіцієнта адаптації
fs = 200;
N =  400;
t = (0:(N-1))/fs; 
v = 2*randn(size(t));  
s = sin(2*pi*10*t);
x = s+v;
%mu = 0.01
L = 128;
mu = 0.01;
[y,e,w] = lms(x,s,mu,L);    % обчислення коефіцієнтів
b = w;
a = 1;
figure();
subplot(2,1,1), plot(t,y);
title('y(n), mu = 0.01');
xlabel('Час'), ylabel('Амплітуда');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag), grid on;
title('АЧХ, mu = 0.01');
xlabel('Частота'), ylabel('Амплітуда');
%mu = 0.001
L = 128;
mu = 0.001;
[y,e,w] = lms(x,s,mu,L);    % обчислення коефіцієнтів
b = w;
a = 1;
figure();
subplot(2,1,1), plot(t,y);
title('y(n), mu = 0.001');
xlabel('Час'), ylabel('Амплітуда');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag), grid on;
title('АЧХ, mu = 0.001');
xlabel('Частота'), ylabel('Амплітуда');
%mu = 0.0001
L = 128;
mu = 0.0001;
[y,e,w] = lms(x,s,mu,L);    % обчислення коефіцієнтів
b = w;
a = 1;
figure();
subplot(2,1,1), plot(t,y);
title('y(n), mu = 0.0001');
xlabel('Час'), ylabel('Амплітуда');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag), grid on;
title('АЧХ, mu = 0.0001');
xlabel('Частота'), ylabel('Амплітуда');
%mu = 0.00001
L = 128;
mu = 0.00001;
[y,e,w] = lms(x,s,mu,L);    % обчислення коефіцієнтів
b = w;
a = 1;
figure();
subplot(2,1,1), plot(t,y);
title('y(n), mu = 0.00001');
xlabel('Час'), ylabel('Амплітуда');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag), grid on;
title('АЧХ, mu = 0.00001');
xlabel('Частота'), ylabel('Амплітуда');
%mu = 0.000001
L = 128;
mu = 0.000001;
[y,e,w] = lms(x,s,mu,L);    % обчислення коефіцієнтів
b = w;
a = 1;
figure();
subplot(2,1,1), plot(t,y);
title('y(n), mu = 0.000001');
xlabel('Час'), ylabel('Амплітуда');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag), grid on;
title('АЧХ, mu = 0.000001');
xlabel('Частота'), ylabel('Амплітуда');