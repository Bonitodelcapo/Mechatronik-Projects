% GRUPPE 4: Bonifazi, Gerner, Leo, Schad 

clear
close all

%% Variablen RC-Tiefpass:

ue_hat = 8; %Amplitude der Eingangsspannung [V]
T_PWM = 0.1; %Periode der Eingangsspannung [s]
d = 30; %Tastgrad der Eingangsspannung in %
C = 700e-9; %Kapazitat [F]
R = 12e3; %Wiederstand [Ohm]

%%
t = out.simout.time;
u_a = out.simout.Data(:,1);
u_e = out.simout.Data(:,2);

%% Ausgabe

plot(t, u_e, 'k-.', t, u_a, 'r', 'LineWidth', 2)
ylim([-1,9])

txt = texlabel(['Periode = ', num2str(T_PWM,2), 's']);
text(0.1, 8.5, txt, 'Fontsize', 14)
title('Simulation RC-Filter')
set(gca, 'Fontsize', 14);
xlabel('Zeit in s', 'Fontsize', 14)
ylabel('Spannung in V')
legend('Eingangsspannung u_e', 'Ausgangsspannung u_a', 'Location', 'Best')
grid on
