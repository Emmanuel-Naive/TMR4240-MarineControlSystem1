figure(1);
plot(shippositionBF.time,shippositionBF.signals.values(:,1));
hold on;
plot(shippositionAF.time,shippositionAF.signals.values(:,1));
xlabel('Time[s]');
ylabel('North Position[m]');
title('Position in North');
legend('Actucal Motion','NPO Measured Trajectory');

figure(2);
plot(shippositionBF.time,shippositionBF.signals.values(:,2));
hold on;
plot(shippositionAF.time,shippositionAF.signals.values(:,2));
xlabel('Time[s]');
ylabel('East Position[m]');
title('Position in East');
legend('Actucal Motion','NPO Measured Trajectory');

figure(3);
plot(shippositionBF.signals.values(:,1),shippositionBF.signals.values(:,2));
hold on;
plot(shippositionAF.signals.values(:,1),shippositionAF.signals.values(:,2));
xlabel('x[m]');
ylabel('y[m]');
title('Position');
legend('Actucal Motion','NPO Measured Trajectory');

P_Trans = 180/pi;               %Transform rad to deg
figure(4);
plot(shippositionBF.time,P_Trans*shippositionBF.signals.values(:,3));
hold on;
plot(shippositionAF.time,P_Trans*shippositionAF.signals.values(:,3));
xlabel('Time[s]');
ylabel('Heading Position[Deg]');
title('Heading Position');
legend('Actucal Motion','NPO Measured Trajectory');

figure(5);
plot(shipvelocityAF.time,shipvelocityAF.signals.values(:,1));
hold on;
plot(output_v.time,output_v.signals.values(:,1));
xlabel('Time[s]');
ylabel('Velocity[m/s]');
title('Velocity: Surge & X-dirction');
legend('NPO Measured Speed','Reference Model');

figure(6);
plot(shipvelocityAF.time,shipvelocityAF.signals.values(:,2));
hold on;
plot(output_v.time,output_v.signals.values(:,2));
xlabel('Time[s]');
ylabel('Velocity[m/s]');
title('Velocity: Sway & Y-dirction');
legend('NPO Measured Speed','Reference Model');

figure(7);
plot(shipvelocityAF.time,P_Trans*shipvelocityAF.signals.values(:,3));
hold on;
plot(output_v.time,P_Trans*output_v.signals.values(:,3));
xlabel('Time[s]');
ylabel('Velocity[Deg/s]');
title('Velocity:Yaw & Heading');
legend('NPO Measured Speed','Reference Model');

% figure(8);
% plot(controllerforce.time,controllerforce.signals.values(:,1));
% hold on;
% plot(thrusterforce.time,thrusterforce.signals.values(:,1));
% xlabel('Time[s]');
% ylabel('Force[N]');
% title('Force in Surge');
% legend('Controller Force','Thruster Force');
% 
% figure(9);
% plot(controllerforce.time,controllerforce.signals.values(:,2));
% hold on;
% plot(thrusterforce.time,thrusterforce.signals.values(:,2));
% xlabel('Time[s]');
% ylabel('Force[N]');
% title('Force in Sway');
% legend('Controller Force','Thruster Force');
% 
% figure(10);
% plot(controllerforce.time,controllerforce.signals.values(:,6));
% hold on;
% plot(thrusterforce.time,thrusterforce.signals.values(:,6));
% xlabel('Time[s]');
% ylabel('Force[N]');
% title('Force in Yaw');
% legend('Controller Force','Thruster Force');
% 
% figure(11);
% plot(eachthrusterforce.time,eachthrusterforce.signals.values(:,1));
% hold on;
% plot(eachthrusterforce.time,eachthrusterforce.signals.values(:,2));
% hold on;
% plot(eachthrusterforce.time,eachthrusterforce.signals.values(:,3));
% hold on;
% plot(eachthrusterforce.time,eachthrusterforce.signals.values(:,4));
% hold on;
% plot(eachthrusterforce.time,eachthrusterforce.signals.values(:,5));
% hold on;
% xlabel('Time[s]');
% ylabel('Force[N]');
% title('Thrust of each Thruster');
% legend('Thruster 1','Thruster 2','Thruster 3','Thruster 4','Thruster 5');