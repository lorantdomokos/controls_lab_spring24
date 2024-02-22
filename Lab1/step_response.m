clc;
clear;

f = 0.2;
tau = 1/f;

[u,t] = gensig("square", tau, 4);

u = u .* (2*3.274825) - 3.274825;

u = u(1:end);
t = t(1:end);

sys2 = tf([1.831172],[0.029003,1]);
sys = tf([ 1.94984],[0.05555, 1]);
sys3 = tf([1.831172],[0.043012,1]);

lsim(sys,sys2,sys3, u,t)
%bode(sys,sys2,sys3)
legend('H_1(s)', 'H_2(s)', 'H_3(s)', Location='southwest');
grid on;
set(gca, 'GridLineStyle', '--');
% step(sys);