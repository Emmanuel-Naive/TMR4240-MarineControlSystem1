% reference model

%Filter parameters
RM_t1 = 15;
RM_t2 = 15;
RM_t3 = 15;

% system parameters
RM_omega1 = pi/100;
RM_omega2 = pi/100;
RM_omega3 = pi/150;
RM_zeta1 = 1;
RM_zeta2 = 1;
RM_zeta3 = 1.2;
RM_Gamma_matrix = [RM_omega1^2 0 0; 0 RM_omega2^2 0; 0 0 RM_omega3^2];
RM_Omega_matrix = [2*RM_zeta1*RM_omega1 0 0; 0 2*RM_zeta2*RM_omega2 0; 0 0 2*RM_zeta3*RM_omega3];

%Set setpoints
setp_n=6;                        %number of setpionts
%setpiont(set_n,3):Check the number of setpoints!
setpoint = [0,0,0;
            50,0,0;
            50,-50,0;
            50,-50,-pi/4;
            0,-50,-pi/4;
            0,0,0];
       
 disp ('Reference Model: Ready to work.');