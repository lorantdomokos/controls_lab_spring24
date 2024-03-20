clear;
clc;


alpha = -23.249;
beta = 42.5728;

A = [0,1;0,alpha];
B = [0;beta];

C = [B,A*B];
desA = A^2 + 26.6655 * A + 373.2624 * eye(2);
K = [0,1]*inv(C)*desA;
K
% Kp = 8.7676
% Kd = 0.0803