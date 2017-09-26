N = 200;
n = 0:N-1;
x = cos(pi*n/16);
figure(1);
subplot(3,1,1), stem(x);
subplot(3,1,2), plot(x);    %plot() - будує графік від х
subplot(3,1,3), stairs(x);  %stairs() - виводить графік у вигляді ступенчатої функції
