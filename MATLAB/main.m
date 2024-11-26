clc
clear all

u=[70 106 66 0.35 0.31 0.34]
h=0.001
t=0
lambda=0.01

Ut=[1 0 0; 0 1 0; 0 0 1]
Uf=[0 0 1; 0 -1 0; 1 0 0]
F=(trace(Ut*Ut')+abs(trace(Uf'*Ut))^2)/(3*(3+1)) %Melhor utilizar a fidelidade baseada nas matrizes de densidade?
D=norm(Ut-Uf)^2 %S√≥ faz sentido se a fidelidade for baseada na matriz de evolu√ß√£o

% Vetores para os controles utilizados
fx = [];
fy = [];
fz = [];
t_vetor = [];

while t <= 0.1
    [a,b,c,Ut]=rungeKutta(u, Ut, Uf, h, t, lambda);
    Ut
    fx = [fx, a];
    fy = [fy, b];
    fz = [fz, c];
    F=(trace(Ut*Ut')+abs(trace(Uf'*Ut))^2)/(3*(3+1))
    D=norm(Ut-Uf)^2
    t_vetor = [t_vetor, t]; 
	t=t+h
end
r0 = [1; 0; 0]
rf = Ut*r0
pf = [ 1/2*(1+rf(3)) 1/2*(rf(1)-1j*rf(2)); 1/2*(rf(1)+1j*rf(2)) 1/2*(1-rf(3))]

figure;

plot(t_vetor, fx, '-o', 'DisplayName', 'fx');
hold on;
plot(t_vetor, fy, '-o', 'DisplayName', 'fy');
hold on;
plot(t_vetor, fz, '-o', 'DisplayName', 'fz');
hold off;

% Adicionar tÌtulos e rÛtulos dos eixos
title('Resultados');
xlabel('Tempo');
ylabel('Valores');
legend('show');

% Ajustar o layout se necess·rio
grid on;
