% Фільтрація ЕКГ, файл ecg117.dat
fs = 1000;
b =	[1 2 1]/4;
a = 1;
n = 512;
ecg = load('ecg117.dat');
ecgd = detrend(ecg); %detrend() - видаляє постійну складову сигналу
y = filter(b, a, ecgd);  %filter() - фільтрує сигнал
t = (0:length(ecgd)-1)/fs; %визначаємо час
figure();
subplot(2,1,1),plot(t,ecg), xlim([0 0.45]);
title('Нефільтрований сигнал');
xlabel('Час'), ylabel('Амплітуда');
subplot(2,1,2),plot(t,y), xlim([0 0.45]);
title('Фільтрований сигнал');
xlabel('Час'), ylabel('Амплітуда');