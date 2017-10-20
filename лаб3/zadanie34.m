% Գ�������� ������� ���(���� ecg2x60.dat) ����������� ��������
fs = 200;
ecg = load('ecg2x60.dat');
ecgf = filter(b,a,ecg);
t =(0:length(ecgf)-1)/fs;
figure(14);
subplot(2,1,1), plot(t,ecg), grid on;
title('��� ������');
xlabel('���'), ylabel('��������');
subplot(2,1,2), plot(t,ecgf), grid on;
title('³������������� ������ ����������� ��������');
xlabel('���'), ylabel('��������');