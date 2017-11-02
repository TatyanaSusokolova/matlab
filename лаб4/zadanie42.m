% Завантаження сигналу ЕКГ з перешкодою (файл ecg2x60.dat) 
% Фільтрація сигналу адаптивним фільтром
ecg = load('ecg2x60.dat');
fs = 200;
t = (0:length(ecg)-1)/fs;
mu = 0.1;
f = 60;
d = [cos(2*pi*f*t); sin(2*pi*f*t)]; % опорний сигнал
[y,e,w] = lms60(ecg,d,mu);  %e - фільтрований сигнал, у - вихідний сигнал
% Графіки результату фільтрації
figure();
subplot(3,1,1), plot(t,ecg);
title('ecg');
xlabel('Час'), ylabel('Амплітуда');
subplot(3,1,2), plot(t,e);
title('e(n)');
xlabel('Час'), ylabel('Амплітуда');
subplot(3,1,3), plot(t, y);
title('y(n)');
xlabel('Частота'), ylabel('Амплітуда');

