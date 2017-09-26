N = 20;
n = 0:N-1;
x1 = (0.8).^n;  %обраховуємо x(n)
x2 = (-0.8).^n;
x3 = (1.1).^n;
x4 = (-1.1).^n;
figure(1);
subplot(1,4,1), stem(x1);
subplot(1,4,2), stem(x2);
subplot(1,4,3), stem(x3);
subplot(1,4,4), stem(x4);

