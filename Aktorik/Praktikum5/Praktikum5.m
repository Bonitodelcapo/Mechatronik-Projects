 %%  Praktikum 5 Gruppe 4: Bonifazi, Gerner, Leo, Schad

%% Aufgabe 1.2

zeit = exp1_003.X.Data;
winkelges = exp1_003.Y(7).Data;
winkel = exp1_003.Y(6).Data;
d_strom = exp1_003.Y(1).Data;
q_strom = exp1_003.Y(2).Data;
z_a = exp1_003.Y(3).Data;
z_b = exp1_003.Y(4).Data;
z_c = exp1_003.Y(5).Data;

%Haben wir die Frequenz aufgenommen? 

plot(zeit, z_a, '*')
hold on;
plot(zeit, z_b, '+')
hold on;
plot(zeit, z_c, 's')
hold off;


%z_b wird zu 0 erstmal bei 537
%z_a wird erstmal zu 1 bei 579
%z_c wird erstmal zu 0 bei 621

% Die Abfolge ist folgendes: bc - c - ca - a - ab - b - bc - c - ca - a -
% ab - b - bc - ...

%Wobei a,b,c willkurliche Bezeichnungen sind, also nicht sicher ob z_a hier
%die phzsikalische z_a des Modells entspricht.
% Ich konnte aus dieser Betrachtung nicht festlegen welche z zu den
% eigentlichen z passt. H
subplot(2,1,1)
plot(zeit, winkelges);
legend("Winkelgeschwindigkeit",'Location','best');
ylim([-5,30])
title("Winkelgeschwindigkeitsverlauf")
xlabel("Zeit in s")
ylabel("Winkelges. in rad/s")
subplot(2,1,2)
plot(zeit, d_strom, zeit, q_strom)
legend(["i_d","i_q"],'Location','best')
title("Verlauf der Strome")
ylim([-5,4])
xlabel("Zeit in s")
ylabel("Strom in A")

% FRAGEN: Was ist gemeint mit Problemen in niedrigen und hohen Drehzahl
% Bereich? Ist es warscheinlich die Frequenz der Schaltzustände gemeint? 

%% Aufgabe 2.1 mit Störgroßen Aufschaltung

zeit = exp1_001.X(1).Data;
I_anteil = exp1_001.Y(1).Data;
K_anteil = exp1_001.Y(2).Data;
winkelges = exp1_001.Y(4).Data;
winkel = exp1_001.Y(3).Data;
d_strom = exp1_001.Y(5).Data;
q_strom = exp1_001.Y(6).Data;
L_q = 0.0040;
Psi = 0.0045;

selbstinduktiv = winkelges .* L_q .* (d_strom + q_strom);
gegeninduktiv = winkelges .* Psi;

subplot(2,1,1)
plot(zeit, I_anteil, zeit, K_anteil); 
legend(["I\_anteil","K\_anteil"],'Location','best');
title("Anteile Stellgrößen am Stromregler mit Störgroßsen Aufschaltung")
xlabel("Zeit in s")
ylabel("Anteile des Stromreglers")

subplot(2,1,2)
plot(zeit, selbstinduktiv, zeit, gegeninduktiv);
legend(["selbstinduktiv","gegeninduktiv"],'Location','best')
xlabel("Zeit in s")
ylabel("selbst- und gegeninduktive Span. in V")

%% Aufgabe 2.1 ohne Störgroßen Aufschaltung

zeit = exp1_002.X(1).Data;
I_anteil = exp1_002.Y(1).Data;
K_anteil = exp1_002.Y(2).Data;

plot(zeit, I_anteil, zeit, K_anteil); 
legend(["I\_anteil","K\_anteil"],'Location','best');
title("Anteile Stellgrößen am Stromregler ohne Störgroßsen Aufschaltung")
xlabel("Zeit in s")
ylabel("Anteile des Stromreglers")

%% Aufgabe 3.2 

%Messwerten fehlen
