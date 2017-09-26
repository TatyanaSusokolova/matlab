fs = 1000;  %частота
t = 0:1/fs:2;   %від 0 до 2 з періодом 1/fs
x = 3*sin(6*pi*t) + 5*sin(16*pi*t);
pks = pksdetect(x); %звертаємося до функції pksdetect(), передаючи параметр х
figure(1);
plot(t,x,'k-'); hold on;    %hold on/off - можливість/неможливість накладання на шар
plot(t(pks), x(pks),'k*'); hold off;
xlabel('t, s'); ylabel('x(t)'); %label() - ім'я осі