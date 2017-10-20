% Фільтрацію сигналу ЕКГ(файл ecg2x60.dat) режекторним фільтром
fs = 200;
ecg = load('ecg2x60.dat');
ecgf = filter(b,a,ecg);
t =(0:length(ecgf)-1)/fs;
figure(14);
subplot(2,1,1), plot(t,ecg), grid on;
title('ЕКГ сигнал');
xlabel('Час'), ylabel('Амплітуда');
subplot(2,1,2), plot(t,ecgf), grid on;
title('Відфільтрований сигнал режекторним фільтром');
xlabel('Час'), ylabel('Амплітуда');