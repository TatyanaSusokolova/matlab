% Дослідження властивостей диференціаторів
% N = 1
fs = 1000;
bd1 = [1 -1];		% коефіцієнти різницевого рівняння 
ad1 = 1;
n = 512;		 % кількість точок, що розраховуються
figure();
[h1,w1] = freqz(bd1, ad1, n);
mag1 = abs(h1);
phase1 = angle(h1)*180/pi;
%позначення осей графіків
subplot(2,1,1), plot(w1/(2*pi)*fs, mag1), grid on;
title('АЧХ першого диференціатора');
xlabel('Частота'), ylabel('Амплітуда');
subplot(2,1,2), plot(w1/(2*pi)*fs, unwrap(phase1)), grid on;
title('ФЧХ першого диференціатора');
xlabel('Частота'), ylabel('Фаза');

% N = 2
bd2 = [1 -1]/2; % коефіцієнти різницевого рівняння
ad2 = 1;
n = 512;    % кількість точок, що розраховуються
figure();
[h2,w2] = freqz(bd2, ad2, n);
mag2 = abs(h2);
phase2 = angle(h2)*180/pi;
%позначення осей графіків
subplot(2,1,1), plot(w2/(2*pi)*fs, mag2), grid on;
title('АЧХ другого диференціатора');
xlabel('Частота'), ylabel('Амплітуда');
subplot(2,1,2), plot(w2/(2*pi)*fs, unwrap(phase2)), grid on;
title('ФЧХ другого диференціатора');
xlabel('Частота'), ylabel('Фаза');
% Побудова передавальних функцій
H1 = filt (bd1, ad1)
H2 = filt (bd2, ad2)