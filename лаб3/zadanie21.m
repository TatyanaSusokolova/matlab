% Фільтрація ЕКГ при r = 0.6
fs=200;
ecg=load('ecg105.txt'); % сигнал ЕКГ
ecgd = detrend(ecg);
ecgf = filter(b,a,ecgd);
t=(0:length(ecgf)-1)/fs;
figure(10);
subplot(2,1,1), plot(t,ecg), grid on, xlim([0 3]);
title('ЕКГ сигнал');
xlabel('Час'); ylabel('Амплітуда');
subplot(2,1,2), plot(t,ecgf), grid on, xlim([0 3]);
title('Відільтрований смуговим фільтром сигнал');
xlabel('Час'); ylabel('Амплітуда');