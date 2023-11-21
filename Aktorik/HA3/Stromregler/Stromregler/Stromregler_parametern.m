%% Berechnungen fur die StromRegler-Parametern Kp_i und Tn_i

T_sigmai = Ts/2 + Tm_i;
Tq = Lq/Rq;
kp_i = (T_sigmai^2 + Tq^2)/(2/Rq * T_sigmai * Tq);
Tn_i = 4 * (T_sigmai * Tq * (T_sigmai^2 + Tq^2))/(T_sigmai + Tq)^3;


%% Berechnungen fur die DrezahlRegler-Parametern Kp_w und Tn_w

