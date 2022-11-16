% Planta de Flujo
clc;
clear;
close all;
v=[-5:0.1:5];
K=4.1;
T=1.1;
tau=0.83;
s = [0:0.25:10];
% Primer Orden
G1= K./(T.*s);
E=exp(-0.83.*s);
G=G1.*E;
plot(s,G1)
