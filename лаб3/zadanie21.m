% Գ�������� ��� ��� r = 0.6
fs=200;
ecg=load('ecg105.txt'); % ������ ���
ecgd = detrend(ecg);
ecgf = filter(b,a,ecgd);
t=(0:length(ecgf)-1)/fs;
figure(10);
subplot(2,1,1), plot(t,ecg), grid on, xlim([0 3]);
title('��� ������');
xlabel('���'); ylabel('��������');
subplot(2,1,2), plot(t,ecgf), grid on, xlim([0 3]);
title('³����������� �������� �������� ������');
xlabel('���'); ylabel('��������');