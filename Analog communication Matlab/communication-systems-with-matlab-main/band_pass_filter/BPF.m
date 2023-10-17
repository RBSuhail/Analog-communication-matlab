% Band Pass Filter

Fx = 1e4;
T = 0:1/Fx:1;
s = [2 1 2]*cos(pi*[150 200 300]'.*T) + randn(size(T))/20;
bandpass(s, [100 200], Fx);
