% Pulse Width Modulation

clear all;
close all;
clc;

% Carrier & Modulating Frequency
Fm = 5;
Fc = 10;

t = 0:0.001:1;

% Modulating Singal
Am = 3.75;
x = Am .* sin(2 * pi * Fm * t);

% Carrier Sawtooth Signal
Ac = 5;
c = Ac .* sawtooth (2 * pi * Fc * t);

% Creating Pulse Width Modulation

%Length of Carrier Sawtooth is stored to 'n'
n = length(c);

%Comparing Modulating and Carrier Sawtooth Amplitudes
for i = 1:n

    if (x(i) >= c(i))
        PWM_Mod(i) = 1;
    else
        PWM_Mod(i) = 0;
    end

end

% Plot the Signals
subplot(3, 1, 1);
plot(t, x);
title('Modulating Signal');

subplot(3, 1, 2);
plot(t, c);
title('Carrier Signal');

subplot(3, 1, 3);
plot(t, PWM_Mod);
title('Modulated Signal');
axis ([0 1 0 2]);
