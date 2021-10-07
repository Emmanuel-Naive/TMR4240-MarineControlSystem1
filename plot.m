%% Plotting the Simulink model (From MCS 1)
%print -dmeta -spart_2 model.emf
%print('-smymodel','-dpdf','filename')
%saveas(h,'filename','format')
%出图代码：print -dmeta（出emf图） -s（模型名字） （图片名字）.emf

%% Post-processing of data from the Simulink
%% plotting data (time series) (From MCS 1)
figure(1);
plot(shippositionBF.time,shippositionBF.signals.values(:,1));
hold on;
plot(shippositionAF.time,shippositionAF.signals.values(:,1));
xlabel('Time[s]');
ylabel('North Position[m]');
title('Position in North');
legend('Actucal Motion','NPO Measured Trajectory');

%% plotting data (array series) (From O&C)
load 4TRY.mat;  % name of data file 
tneed = 16;
tplot = 0:delta_t:tneed-delta_t;
numtp = tneed/delta_t;
x1p = x1(1:numtp);
x3p = x3(1:numtp);
x5p = x5(1:numtp);

figure(3);
plot(ans(1,:),ans(2,:),tplot,x1p);
xlabel('Time[s]');
ylabel('Travel[rad]');
legend('$\lambda$','$\lambda_{ref}$','Interpreter','LaTex');
