fs = 1000;  %�������
t = 0:1/fs:2;   %�� 0 �� 2 � ������� 1/fs
x = 3*sin(6*pi*t) + 5*sin(16*pi*t);
pks = pksdetect(x); %���������� �� ������� pksdetect(), ��������� �������� �
figure(1);
plot(t,x,'k-'); hold on;    %hold on/off - ���������/����������� ���������� �� ���
plot(t(pks), x(pks),'k*'); hold off;
xlabel('t, s'); ylabel('x(t)'); %label() - ��'� ��