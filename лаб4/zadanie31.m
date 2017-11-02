% Моделювання досліджуваного сигналу
fs = 200;
N =  400;
t = (0:(N-1))/fs; 
s1 = sin(2*pi*10*t);
s2 = sin(2*pi*20*t);
s = [s1 s2];
t = (0:length(N)-1)/fs; 
v = 2*randn(size(t));  
x = s+v;
