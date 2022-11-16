% sistemas dinámicos
% Planta de Flujo en el tiempo
clc;
clear;
close all;
K=3.73;
T=0.91;
tau=0.83;
t = [0:0.25:5];
u = ones(size(t));
n = max(size(u));
for i = 1:n
    if t(1,i)<tau
        u(1,i)=0;
    else
        u(1,i)=1;
    end
    i = i+1;
end   
% Funcion
ft = K.*u;
E=exp(-T.*(-tau+t));
FT=ft.*E;
plot(t,u,'-b')
hold on
plot(t,FT,'-r')

