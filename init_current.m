%Current setting

%Set Current Angle & Speed
%(in this case, the current will hold final values after the given time)
Cur_t = 15;               %the duration time of the current
Cur_a = [Cur_t 270];      %the angle of current
    %Cur_a=[time angle(deg)];Cur_a=[持续时间 角度大小]
Cur_v = [Cur_t 0.2];      %the velocity of current
    %Cur_a=[time velocity];Cur_a=[持续时间 速度大小]

%Set Current changing parameters
%If current angle changes, change the following parameters
Cur_Ac = 0;                    %The judgment variable for the simulink
    %Ac>0: the current angele changes; Ac<=0,the current angle unchanges.

Cur_tc = [1:1:300]';         %The time of the current whose angle are changing
    %Cur_tc=[starting time,step time,final time];Cur_tc=[开始时间,步长,结束时间];
Cur_vc = linspace(0,90,300)'; %The change value of the current whose angle are changing
    %Cur_tc=linspace(inital,final value,step);Cur_tc=[初始值,最终值,间隔数量（需和Cur_tc的数组长度保持一致）];
Cur_ac = [Cur_tc Cur_vc];  %the change of current angele
    %Cur_ac=[time value(deg)];Cur_ac=[时间数组 角度变量数组]

%Set the variation in current direction 
%NB:Maximum Variation: 5 Degs(From requirements of Project part2)
%Gauss-Markov process
Cur_A_mu = 0.001;
Cur_A_w = 0.005;            %为符合要求，w最大值在0.5左右，为了偷懒取了Usv的数值

disp ('Current: Ready to work.');
  
