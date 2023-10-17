% Pulse Position Modulation

clear all;
close all;
clc;

% Carrier & Modulating Frequency
Fm = 200;
Fc = 1000;

% Sampling Frequency
Fs = 10000;

t = 0:1 / Fs:((2 / Fm) - (1 / Fs));

% Modulating Singal
Am = 0.4;
x = Am * cos(2 * pi * Fm * t) + 0.5;

% Carrier Signal
Ac = 0.4;
c = Ac * sin(2 * pi * Fc * t);

% Creating Pulse Position Modulation

PPM_Mod = modulate(x, Fc, Fs, 'ppm');

% Plot the Signals
subplot(3, 1, 1);
plot(t, x);
title('Modulating Signal');

subplot(3, 1, 2);
plot(t, c);
title('Carrier Signal');

subplot(3, 1, 3);
plot(PPM_Mod);
axis([0 500 -0.2 1.2]);
title('Modulated Signal');
