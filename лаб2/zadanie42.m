% Дослідження процесу диференціювання ЕКГ з шумом (файл ecg117.dat)
% N = 1
fs = 1000;
ecg = load('ecg117.dat');	% сигнал ЕКГ
ecgd1 = filter(bd1, ad1, ecg);
t1 = (0:length(ecgd1)-1)/fs; 
figure();
subplot(2,1,1), plot(t1, ecg), xlim([0 0.45]);
title('Нефільтрований сигнал');
xlabel('Час'), ylabel('Амплітуда');
subplot(2,1,2), plot(t1, ecgd1), xlim([0 0.45]);
title('Фільтрований сигнал');
xlabel('Час'), ylabel('Амплітуда');
% N = 2
ecgd2 = filter(bd2, ad2, ecg);
t2 = (0:length(ecgd2)-1)/fs; 
figure();
subplot(2,1,1), plot(t2, ecg), xlim([0 0.45]);
title('Нефільтрований сигнал');
xlabel('Час'), ylabel('Амплітуда');
subplot(2,1,2), plot(t2, ecgd2), xlim([0 0.45]);
title('Фільтрований сигнал');
xlabel('Час'), ylabel('Амплітуда');