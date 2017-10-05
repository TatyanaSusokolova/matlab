% ��������� ������� �������, ���������� ��� �� ���
fs = 1000;
b =	[1 2 1]/4;  % ����������� ���������� �������
a = 1;
n = 512;    % ������� �����, �� ��������������
figure(1);
[h,w] = freqz(b,a,n);   %���������� ��� �� ���
mag = abs(h);
phase = angle(h)*180/pi;
%���������� ���� �������
subplot(2,1,1), plot(w/(2*pi)*fs, mag), grid on; %grid on - ����� ����
xlabel('�������'), ylabel('��������');
subplot(2,1,2), plot(w/(2*pi)*fs, unwrap(phase)), grid on;
xlabel('�������'), ylabel('����');

