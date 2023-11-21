%% Berechnungen fur die StromRegler-Parametern Kp_i und Tn_i

T_sigmai = Ts/2 + Tm_i;
Tq = Lq/Rq;
kp_i = (T_sigmai^2 + Tq^2)/(2/Rq * T_sigmai * Tq);
Tn_i = 4 * (T_sigmai * Tq * (T_sigmai^2 + Tq^2))/(T_sigmai + Tq)^3;


%% Berechnungen fur die DrezahlRegler-Parametern Kp_w und Tn_w

Tm_w = 15e-3;
T_EM = 1e-3; %QUESTO E' DA CONTROLLARE !
T_sigmaw = Tm_w + T_EM;
Kp_w = J/(2 * T_sigmaw);
Tn_w = 4 * T_sigmaw;
