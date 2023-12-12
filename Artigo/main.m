clc
clear all

u=[70 106 66 0.35 0.31 0.34]
h=0.001
t=0
lambda=0.01

Ut=[1 0 0; 0 1 0; 0 0 1]
Uf=[0 0 1; 0 -1 0; 1 0 0]
F=(trace(Ut*Ut')+abs(trace(Uf'*Ut))^2)/(3*(3+1))
D=norm(Ut-Uf)^2

while t <= 0.1
    Ut=rungeKutta(u, Ut, Uf, h, t, lambda)
	F=(trace(Ut*Ut')+abs(trace(Uf'*Ut))^2)/(3*(3+1))
	D=norm(Ut-Uf)^2
	t=t+h
end