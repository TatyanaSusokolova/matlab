% Գ�������� ������� ��� (���� ecg2�60.dat) ����������� ��������
fs = 60;
ecg = load('ecg2x60.dat');		% ������ ���
ecgd = detrend(ecg);
ecgf = filter(br, ar, ecgD);
t = (0:length(ecgd)-1)/fs;  	
figure();
subplot(2,1,1), plot(t, ecgd), xlim([0 5.3]);
title('�������������� ������');
xlabel('���'), ylabel('��������');
subplot(2,1,2), plot(t, ecgf), xlim([0 5.3]);
title('Գ���������� ������');
xlabel('���'), ylabel('��������');