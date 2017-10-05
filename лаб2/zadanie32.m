% Фільтрація сигналу ЕКГ (файл ecg2х60.dat) режекторним фільтром
fs = 60;
ecg = load('ecg2x60.dat');		% сигнал ЕКГ
ecgd = detrend(ecg);
ecgf = filter(br, ar, ecgD);
t = (0:length(ecgd)-1)/fs;  	
figure();
subplot(2,1,1), plot(t, ecgd), xlim([0 5.3]);
title('Нефільтрований сигнал');
xlabel('Час'), ylabel('Амплітуда');
subplot(2,1,2), plot(t, ecgf), xlim([0 5.3]);
title('Фільтрований сигнал');
xlabel('Час'), ylabel('Амплітуда');