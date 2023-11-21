

clear

%% ======= Kenndaten Motor =======
km = 153e-3;
Rq = 7.89;
i_max = 3.04;
Ud = 24;
Lq = 17.4e-3;
J = 5012e-6;
MR = 21.4e-3;
%==============

%% =====  Parameter Stromregler ====
Ts = 4e-05;             % Stromrichter
Tm_i = 1e-3;            % Stromfilter

Kp_i = 25;
Tn_i = 0.0012;


%% ====== Vorgabe Strom
i_soll = 2;

