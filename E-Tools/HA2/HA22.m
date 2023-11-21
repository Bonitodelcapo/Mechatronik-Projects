% Aufgabe 2

%%  Einlesen von Messwerten aus dem File

Daten = load("temperaturverlauf.mat")       %Acces to data with Daten.t and Daten.T

Zeit = Daten.t
Temp = Daten.T

%%  Anonyme Funktionen

T1 = @(x,t) x(1)*(1-exp(x(2)*t))

errr = @(x) sum((Temp - T1(x,Zeit)).^2)

%%  Parameter Optimum für x = [a,b]

par_start = [11.7, -0.001]
par_opt = fminsearch(errr, par_start)

%%  Auswertung

plot(Zeit,Temp,'*')
hold on;
plot(Zeit, T1(par_opt, Zeit))