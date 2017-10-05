% Գ�������� ���, ���� ecg117.dat
fs = 1000;
b =	[1 2 1]/4;
a = 1;
n = 512;
ecg = load('ecg117.dat');
ecgd = detrend(ecg); %detrend() - ������� ������� �������� �������
y = filter(b, a, ecgd);  %filter() - ������� ������
t = (0:length(ecgd)-1)/fs; %��������� ���
figure();
subplot(2,1,1),plot(t,ecg), xlim([0 0.45]);
title('�������������� ������');
xlabel('���'), ylabel('��������');
subplot(2,1,2),plot(t,y), xlim([0 0.45]);
title('Գ���������� ������');
xlabel('���'), ylabel('��������');