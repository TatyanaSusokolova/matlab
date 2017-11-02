%Фільтрація досліджуваного сигналу 
fs = 200;
N =  400;
t = (0:(N-1))/fs; 
v = 2*randn(size(t));  
s = sin(2*pi*10*t) + sin(2*pi*20*t);
x = s+v;
L = 32; % порядок фільтра
w = wiener_hopf(x, s, L);% обчислення коефіцієнтів
b = w;
a = 1;
y = filter(b,a,s);
figure();
subplot(3,1,1), plot(t,x);
title('x(n)');
xlabel('Час'), ylabel('Амплітуда');
subplot(3,1,2), plot(t,s);
title('s(n)');
xlabel('Час'), ylabel('Амплітуда');
subplot(3,1,3), plot(t,y);
title('y(n)');
xlabel('Час'), ylabel('Амплітуда');
% ------ АЧХ фільтру Вінера
n = 512;    % кількість точок, що розраховуються
figure();
[h, w] = freqz(b,a,n);
mag = abs(h);
plot(w/(2*pi)*fs, mag);
title('АЧХ');
xlabel('Частота'), ylabel('Амплітуда');

