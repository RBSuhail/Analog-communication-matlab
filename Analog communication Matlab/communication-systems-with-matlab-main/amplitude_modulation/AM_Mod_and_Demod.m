% Amplitude Modulation and Demodulation

clear all;
close all;
clc;

% Modulation

% Carrier & Modulating Frequency
Fm = 10;
Fc = 500;

% Sampling Frequency
Fs = 2 * (Fc + 2 * Fm) * 10;

t = 0:1 / Fs:2 / Fm - 1 / Fs;

% Modulating Singal
Am = 1;
x = Am * sin(2 * pi * Fm * t);

% Carrier Signal
Ac = 1;
c = Ac * sin(2 * pi * Fc * t);

% Creating Amplitude Modulation
AM_Mod = ammod(x, Fc, Fs);

% Plot the Signals
subplot(4, 1, 1);
plot(t, x);
title('Modulating Signal');

subplot(4, 1, 2);
plot(t, c);
title('Carrier Signal');

subplot(4, 1, 3);
plot(t, AM_Mod);
title('Modulated Signal');

% Demodulation

% Creating Amplitude Demodulation
AM_DeMod = amdemod(AM_Mod, Fc, Fs);

% Plot the Signals
subplot(4, 1, 4);
plot(t, AM_DeMod);
title('Demodulated Signal');