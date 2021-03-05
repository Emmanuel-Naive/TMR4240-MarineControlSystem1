%% Bias estimator model
T_b1 = 1000;
T_b2 = 1000;
T_b3 = 1000;
T_b = diag([T_b1 T_b2 T_b3]);

 M = [6.8177e6  0         0        ;
      0         7.8784e6  -2.5955e6;
      0         -2.5955e6 3.57e9   ];
 M_inv = inv(M);
 
  D = [2.6486e5  0         0        ;
      0         8.8164e5  0        ;
      0         0         3.3774e8 ];
%%
% Wave periods
T_w1 = 9;
T_w2 = 9;
T_w3 = 9;

% Wave frequencies
omega1 = 2*pi/T_w1;
omega2 = 2*pi/T_w2;
omega3 = 2*pi/T_w3;

% Wave damping
zeta_1 = 0.1;
zeta_2 = 0.1;
zeta_3 = 0.1;

% Wave matrix
Omega = diag([omega1 omega2 omega3]);
Delta = diag([zeta_1 zeta_2 zeta_3]);

A_w = [zeros(3), eye(3);
       -Omega^2, -2*Delta*Omega];
C_w = [zeros(3) eye(3)];

%% Nonlinear passive observer

Zeta_1 = 1.0;
Zeta_2 = 1.0;
Zeta_3 = 1.0;

lambda = 0.1;

omega_c = 1.2 * omega1;

K_1i = -2*(1.0 - lambda)*(omega_c/omega1);
K_1i3 = 2*(1.0 - lambda)*omega1;
K_2i = omega_c;

K1 = [diag([K_1i   K_1i   K_1i]);
      diag([K_1i3  K_1i3  K_1i3])];
  
K2 = K_2i * eye(3);

K4 = 100000*diag([1 1 100]);

K3 = 0.1*K4;

%% measurement noise
%Gauss-Markov process
OB_mu = 0.001;
OB_w = 0.005; 
disp ('Nonlinear Passive observer: Ready to work.');

