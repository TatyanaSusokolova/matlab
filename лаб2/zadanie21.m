%��������� ������� ������������� ������������
fs = 1000;
bp = [-3 12 17 12 -3]/35;		% ����������� ���������� �������
ap = 1;
n = 512; % ������� �����, �� ��������������
figure();
[h,w] = freqz(bp, ap, n);
mag = abs(h); 
phase = angle(h)*180/pi;
% ������ ���������� ���� �������
subplot(2,1,1), plot(w/(2*pi)*fs, mag), grid on;
title('���');
xlabel('�������'), ylabel('��������');
subplot(2,1,2), plot(w/(2*pi)*fs, unwrap(phase)), grid on;
title('���');
xlabel('�������'), ylabel('����');



% ���������� ���� �������
disp('��� ������������� �������') 
xp = roots(bp);
disp(xp);
% ����� ���� �� ������ �������
figure();
zp = zplane(xp);