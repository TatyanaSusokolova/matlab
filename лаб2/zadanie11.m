% Реалізація фільтру Хеннінга, обчислення АЧХ та ФЧХ
fs = 1000;
b =	[1 2 1]/4;  % коефіцієнти різницевого рівняння
a = 1;
n = 512;    % кількість точок, що розраховуються
figure(1);
[h,w] = freqz(b,a,n);   %обчислюємо АЧХ та ФЧХ
mag = abs(h);
phase = angle(h)*180/pi;
%позначення осей графіків
subplot(2,1,1), plot(w/(2*pi)*fs, mag), grid on; %grid on - малює сітку
xlabel('Частота'), ylabel('Амплітуда');
subplot(2,1,2), plot(w/(2*pi)*fs, unwrap(phase)), grid on;
xlabel('Частота'), ylabel('Фаза');

