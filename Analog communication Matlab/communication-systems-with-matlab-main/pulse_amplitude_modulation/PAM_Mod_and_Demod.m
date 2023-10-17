% Pulse Amplitude Modulation and Demodulation

clear all;
close all;
clc;

% Modulation

% Carrier Frequency
Fc = 2;

% Sampling Frequency
Fs = 1500;

F0 = 150;
W = 0.005;
t = 0:1 / Fs:1;

% Modulating Singal
Am = 5;
x = Am * sin(2 * pi * Fc * t);

% Carrier Signal
c = pulstran(0:1 / Fs:1, 0:1 / F0:1, 'rectpuls', W);

% Creating Pulse Amplitude Modulation
PAM_Mod = x .* c;

% Plot the Signals
subplot(4, 1, 1);
plot(t, x);
title('Modulating Signal');

subplot(4, 1, 2);
plot(t, c);
title('Carrier Signal');

subplot(4, 1, 3);
plot(t, PAM_Mod);
title('Modulated Signal');

% Demodulation

% Creating Pulse Amplitude Demodulation
[b, a] = butter(5, 0.02);
PAM_DeMod = filter(b, a, PAM_Mod);

% Plot the Signals
subplot(4, 1, 4);
plot(t, PAM_DeMod);
title('Demodulated Signal');
