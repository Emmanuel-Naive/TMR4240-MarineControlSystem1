
global posX
posX = [39.3 35.3 31.3 -28.5 -28.5];
global posY
posY = [0 0 0 5 -5];
global K
K = eye(9);

disp('Thrust allocation: Ready to work.');





% function [u_thrust , alpha] = extended_thrust_allocation(tau,posX,posY,K);
% 
% 
% T_extended = [0,1,0,1,0,1,0,1,0;1,0,1,0,1,0,1,0,1;
%     posX(1),0,posY(2),0,posX(3),posY(4),posX(4),posY(5),posX(5)];
% 
% % thruster angles
% u_e = inv(K)*pinv(T_extended)*tau;
% 
% u_thrust_2 = sqrt(u_e(2)^2 + u_e(3)^2);
% u_thrust_3 = sqrt(u_e(4)^2 + u_e(5)^2);
% u_thrust_4 = sqrt(u_e(6)^2 + u_e(7)^2);
% u_thrust_5 = sqrt(u_e(8)^2 + u_e(9)^2);
% 
% u_thrust = [u_e(1);u_thrust_2;u_thrust_3;u_thrust_4;u_thrust_5]
%  
% % alpha
% alpha = zeros(5,1);
% alpha(1) = pi/2;
% alpha(2) = atan2(u_e(3),u_e(2));
% alpha(3) = atan2(u_e(5),u_e(4));
% alpha(4) = atan2(u_e(7),u_e(6));
% alpha(5) = atan2(u_e(9),u_e(8));
% 
% 
% 
% end