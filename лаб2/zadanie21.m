%Реалізація фільтру поліноміального згладжування
fs = 1000;
bp = [-3 12 17 12 -3]/35;		% коефіцієнти різницевого рівняння
ap = 1;
n = 512; % кількість точок, що розраховуються
figure();
[h,w] = freqz(bp, ap, n);
mag = abs(h); 
phase = angle(h)*180/pi;
% введіть позначення осей графіків
subplot(2,1,1), plot(w/(2*pi)*fs, mag), grid on;
title('АЧХ');
xlabel('Частота'), ylabel('Амплітуда');
subplot(2,1,2), plot(w/(2*pi)*fs, unwrap(phase)), grid on;
title('ФЧХ');
xlabel('Частота'), ylabel('Фаза');



% Обчислення нулів фільтру
disp('Нулі поліноміального фільтру') 
xp = roots(bp);
disp(xp);
% Карта нулів та полюсів фільтру
figure();
zp = zplane(xp);