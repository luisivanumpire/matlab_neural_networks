clc;
close all;
clear;
dt = 0.05;
T1 = 7.3131;
T2 = 0.1011;
K = 3.0059;
a1 = 1;
a2 = dt;
a3 = 0;
a4 = -dt/(T1*T2);
a5 = 1-dt*(T1+T2)/(T1*T2);
a6 = K*dt/(T1*T2);
%n = [20:dt:30];
n = 100;
%u = 20.+rand(1,n)*10; %escalamiento de 20 a 30
%u = [20.1:0.1:30];
u = 20.*ones(1,100);

for j=5:10
    u(1,j)=30;
    j=j+1;
end

%u = 20.+rand(1,n)*10;
x1 = zeros(size(u));
x2 = zeros(size(u));
%x1_0 = 0;
x1_k = 20; %u(1,1);
x2_k = 0; %(x1_k - x1_0 )/dt;

for i = 1:n
    x1(1,i) = x1_k;
    x2(1,i) = x2_k;
    x1_k1 = a1*x1_k + a2*x2_k + a3;
    x2_k1 = a4*x1_k + a5*x2_k + a6*u(1,i);
    i = i+1;
    x1_k = x1_k1;
    x2_k = x2_k1;
    
end
figure(1)
plot(u,'-b')
hold on;
figure(2)
plot(x1,'-r')
figure(3)
plot(x2,'-y')
