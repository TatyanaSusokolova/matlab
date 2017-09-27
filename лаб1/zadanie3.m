pec1 = load('pec1.dat');    %загрузка файлу
fs = 1000;
fcg = pec1(:, 1);   %використовуємо дані першого стовпчика
ecg = pec1(:, 2);   %другого
cps = pec1(:, 3);   %третього
t = (0:length(fcg) - 1)/fs;
figure(1);
subplot(3, 1, 1), plot(t, fcg), xlim([1 4]), ylabel('ФКГ'); %xlim() - ліміт [від..до]
title ('Сигнали');
subplot(3, 1, 2), plot(t, ecg), xlim([1 4]), ylabel('ЕКГ');
subplot(3, 1, 3), plot(t, cps), xlim([1 4]), ylabel('СКП');
xlabel('t');

length(pec1)