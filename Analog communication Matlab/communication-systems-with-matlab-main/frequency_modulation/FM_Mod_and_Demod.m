% Frequency Modulation and Demodulation

clear all;
close all;
clc;

% Modulation

% Carrier & Modulating Frequency
Fm = 35;
Fc = 500;

% Sampling Frequency
Fs = 10000;

% Modulation Index
beta = 10;

t = (0:0.1 * Fs) / Fs;

% Carrier & Modulating Angular Frequency
Wc = 2 * pi * Fc;
Wm = 2 * pi * Fm;

% Modulating Signal
Am = 1;
x = Am * cos(Wm * t);

% Carrier Signal
Ac = 1;
c = Ac * cos(Wc * t);

% Creating Frequency Modulation
FM_Mod = Ac * cos((Wc * t) + beta * sin(Wm * t));

% Plot the Signals
subplot(4, 1, 1);
plot(t, x);
title('Modulating Signal');

subplot(4, 1, 2);
plot(t, c);
title('Carrier Signal');

subplot(4, 1, 3);
plot(t, FM_Mod);
title('Modulated Signal');

% Demodulation

% Creating Frequency Demodulation
FM_DeMod = demod(FM_Mod, Fc, Fs, 'fm');

% Plot the Signals
subplot(4, 1, 4);
plot(t, FM_DeMod);
title('Demodulated Signal');
