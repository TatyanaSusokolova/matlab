%Фільтрація ЕКГ файл ecg117.dat з використанням фільтру 
%поліноміального згладжування
ecg = load('ecg117.dat'); 
ecgd = detrend(ecg);
ecgf5 = filter(bp, ap, ecgd);
t = (0:length(ecgd)-1)/fs;
figure();
subplot(2,1,1), plot(t, ecgd), xlim([0 0.45]);
title('Нефільтрований сигнал');
xlabel('Час'), ylabel('Амплітуда');
subplot(2,1,2), plot(t, ecgf5), xlim([0 0.45]);
title('Фільтрований сигнал');
xlabel('Час'), ylabel('Амплітуда');