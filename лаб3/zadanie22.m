% Գ�������� ��� ��� r = 0.7 �� r = 0.9
% r = 0.7
fs=200;
ecg=load('ecg105.txt');
ecgd = detrend(ecg);
ecgf1 = filter(b1,a1,ecgd);
t=(0:length(ecgf1)-1)/fs;
figure(11);
subplot(3,1,1), plot(t,ecg), grid on;
title('��� ������');
xlabel('���'), ylabel('��������');
subplot(3,1,2), plot(t,ecgf), grid on;
title('³������������� ������ ��� r = 0.7');
xlabel('���'), ylabel('��������');
% r = 0.9
ecgf2 = filter(b2,a2,ecgd);
t=(0:length(ecgf2)-1)/fs;
subplot(3,1,3), plot(t,ecgf), grid on;
title('³������������� ������ ��� r = 0.9');
xlabel('���'), ylabel('��������');