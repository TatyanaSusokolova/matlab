N = 10;
n = 0:N-1;
x = double(n == 0);
figure(1);
subplot(1,2,1), stem(x);
subplot(1,2,2), stem(x-2);

