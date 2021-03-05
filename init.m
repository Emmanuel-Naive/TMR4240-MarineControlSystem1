ao%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% init()                                                                  %
%                                                                         %              
% Set initial parameters for part1.slx and part2.slx                      %
%                                                                         %
% Created:      2018.07.12	Jon Bj鴕n�                                   %
%                                                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;

load('supply.mat');
load('supplyABC.mat');
load('thrusters_sup.mat')

% Initial position x, y, z, phi, theta, psi
eta0 = [0,0,0,0,0,0]';
% Initial velocity u, v, w, p, q, r
nu0 = [0,0,0,0,0,0]';

%print -dmeta -spart_2 model.emf
%出图代码：print -dmeta（出emf图） -s（模型名字） （图片名字）.emf

%initialization
%NB: Open the switch in simulink!(wind & current)
%别忘了在simulink里打开模块开关！（Wind和Current模块）
init_current;
init_wind;
%Wave should be initialized in simulink.
%Choose one observer
init_NPO;
%init_kalmanFilter
init_RM;
init_DP;
init_TA;