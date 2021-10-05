%Wind setting
Wind_t = 300;               %the duration time of the wind
Wind_Cw = xlsread('wind.xlsx');

%Set the mean wind velocity
Wind_Um= [Wind_t 10];       %From requirements of Project part2
    %Wind_Um=[time velocity];Wind_Um=[持续时间 速度大小]

%Set the slowly varing wind velocity
%Wind_Usv is calculated in simulink.
%Gauss-Markov process
Wind_mu = 0.001;             %From requirements of Assignment2
Wind_w = 0.005;

%Set the variation in wind direction 
%NB:Maximum Variation: 5 Degs(From requirements of Project part2)
%Wind_a is calculated in simulink.
Wind_A= [Wind_t 180];
    %Wind_A=[time angle];Wind_Um=[持续时间 角度大小]
%Gauss-Markov process
Wind_A_mu = 0.001;
Wind_A_w = 0.005;            %为符合要求，w最大值在0.5左右，为了偷懒取了Usv的数值

%Set the gust wind velocity
%Choose the Harris spectrum
Wind_nfreq = 100;
Wind_L = 1800;
Wind_k = 0.0026;
Wind_U10=10;
for i = 1:Wind_nfreq
    f(i) = 0.01 + (i-1)/(Wind_nfreq-1) * 0.99;
    ftilde = Wind_L*f(i)/Wind_U10;
    S(i) = (4*Wind_k*Wind_L*Wind_U10) / ((2+ftilde^2)^(5/6));
end
Wind_phi = 2*pi * rand(Wind_nfreq,1); 
for t = 0:Wind_t
    W_Ug(t+1) = 0;
    for i = 1:Wind_nfreq
        W_Ug(t+1) = W_Ug(t+1) + sqrt(2*S(i)*(f(2)-f(1))) * cos(2*pi*f(i)*t + Wind_phi(i));
    end
end
Wind_tm = [0:1:Wind_t]';       %time matrix (per second)
Wind_Ug=[Wind_tm W_Ug'];

disp ('Wind: Ready to work.');
