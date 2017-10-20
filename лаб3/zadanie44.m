% Інтегрування сигналу ЕКГ (файл ecg105.txt) інтеграторами 
fs = 200;
ecg = load('ecg105.txt');   % сигнал ЕКГ
ecgd = detrend(ecg);
figure(23);
% інтегратор за методом прямокутників
ecgf = filter(b,a,ecgd);
subplot(3,1,1), plot(ecgf), grid on;
title('Інтегратор за методом прямокутників');
% інтегратор за методом трапецій
ecgf1 = filter(b1,a1,ecgd);
subplot(3,1,2), plot(ecgf1), grid on;
title('Інтегратор за методом трапецій');
% інтегратор за методом парабол (Сімпсона)
ecgf2 = filter(b2,a2,ecgd);
subplot(3,1,3), plot(ecgf2), grid on;
title('Інтегратор за методом парабол (Сімпсона)');