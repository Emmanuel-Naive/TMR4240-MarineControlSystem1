%PID-controller: Gain matrixes

% for simulation 1 and 2
%DP_Kp = [4*10^(5)  2*10^(5)  1*10^(7)];
%DP_Ki = [3*10^(3)  2*10^(3)  1*10^(3)];
%DP_Kd = [6*10^(6)  5*10^(6)  8*10^(4)];

% for simulation 3 and 4
%DP_Kp = [8*10^5  9*10^5  1*10^7];
%DP_Ki = [2*10^2  7*10^2  1*10^3];
%DP_Kd = [4*10^6  5*10^6  8*10^4];

% DP_Kp = [ 5*10^(7)  3*10^(6)  3*10^(7)];
% DP_Ki = [ 1*10^(2)  2*10^(2)  1*10^(2)];
% DP_Kd = [ 7*10^(6)  5*10^(7)  8*10^(4)];

% DP_Kp = [4e5 8e4 3e7];
% DP_Ki = [8e3 1e3 1e5];
% DP_Kd = [4e6 1e4 4e3];

DP_Kp = [2e5 2e5 8e7];
DP_Ki = [2e3 4e3 8e5];
DP_Kd = [3e6 2e6 5e8];

DP_Kp_matrix = diag(DP_Kp);
DP_Ki_matrix = diag(DP_Ki);
DP_Kd_matrix = diag(DP_Kd);

disp ('DP Controller: Ready to work.');