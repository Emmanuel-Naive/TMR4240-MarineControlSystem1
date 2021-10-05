%% Time step
Ts = 0.1;
%% Bias estimator model
T_b1 = 1000;
T_b2 = 1000;
T_b3 = 1000;
T_b = diag([T_b1 T_b2 T_b3]);

% Noise parameters
E_b1 = 80;
E_b2 = 20;
E_b3 = 80;
E_b = diag([E_b1 E_b2 E_b3]);

%% Wave estimator model
% Wave periods
T_w1 = 12;
T_w2 = 12;
T_w3 = 12;

% Wave frequencies
omega1 = 2*pi/T_w1;
omega2 = 2*pi/T_w2;
omega3 = 2*pi/T_w3;

% Wave damping
zeta_1 = 0.07;
zeta_2 = 0.07;
zeta_3 = 0.07;

% Wave matrix
Omega = diag([omega1 omega2 omega3]);
Delta = diag([zeta_1 zeta_2 zeta_3]);

A_w = [zeros(3), eye(3);
       -Omega^2, -2*Delta*Omega];
C_w = [zeros(3) eye(3)];

% Noise parameters
K_w1 = 0.5;
K_w2 = 0.1;
K_w3 = 0.01;
K_w = diag([K_w1 K_w2 K_w3]);

E_w = [zeros(3);
       K_w];
   
%% Vessel mass and damping matrix
 M = [6.8177e6  0         0        ;
      0         7.8784e6  -2.5955e6;
      0         -2.5955e6 3.57e9   ];
 D = [2.6486e5  0         0        ;
      0         8.8164e5  0        ;
      0         0         3.3774e8 ];
  M_inv = inv(M);
  
  B = [zeros(12,3)
       inv(M)    ];
  E = [E_w zeros(6,3);
       zeros(3,6)    ;
       zeros(3)   E_b;
       zeros(3,6)    ];
  H = [C_w  eye(3)  zeros(3,6)];
  
%% Tuning paramaters for the kalman filter
Q = diag([0.1 0.1 0.1 100 100 1000]);
R = diag([0.0001 0.0001 0.000000001]);
P_0 = eye(15)*0.00001;
x_0 = zeros(15, 1);

%% blabla
kalman_data = struct('M'  , M,...
                     'D'  , D,...
                     'H'  , H,...
                     'B'  , B,...
                     'E'  , E,...
                     'Q'  , Q,...
                     'R'  , R,...
                     'Aw', A_w,...
                     'Tb', T_b,...
                     'P0' , P_0,...
                     'x0' , x_0,...
                     'Ts' , Ts,...
                     'M_inv', M_inv,...
                     'Zetan', Delta,...
                     'Wn', Omega);
save('Kalman_data.mat', '-struct', 'kalman_data');
  
%% measurement noise
%Gauss-Markov process
OB_mu = 0.001;
OB_w = 0.005;     
disp ('Extended Kalman Filter: Ready to work.');

