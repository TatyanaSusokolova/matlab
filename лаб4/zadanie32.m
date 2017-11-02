% Фільтрація сигналу адаптивним фільтром
fs = 200;
N =  400;
t = (0:(N-1))/fs; 
s1 = sin(2*pi*10*t);
s2 = sin(2*pi*20*t);
s = [s1 s2];
t = (0:length(s)-1)/fs;
v = 2*randn(size(t));  
x = s+v;
L = 128;
mu = 0.001;
[y,e,w] = lms(x,s,mu,L);
b = w;
a = 1;
% Графіки результату фільтрації
figure();
subplot(3,1,1), plot(t,x);
title('s(n)');
xlabel('Час'), ylabel('Амплітуда');
subplot(3,1,2), plot(t,y);
title('y(n)');
xlabel('Час'), ylabel('Амплітуда');
% АЧХ адаптивного фільтру
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(3,1,3), plot(w/(2*pi)*fs, mag), grid on;
title('АЧХ');
xlabel('Частота'), ylabel('Амплітуда');