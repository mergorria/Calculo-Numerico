#Ejercicio 6
format long

%Difusion reaccion

%Datos:
k0 = 0.9;
L = 5; % L = abs(inter(2) - inter(1))./h;
H = 15;
ue = 4;

fuente = @(x) 5.*x.*(5-x);
cr = @(x) 1.05.*x +2;

%Para difusion reaccion:
#-K0u''(x) + cR(x)u(x) = f(x) , 0 ¡Â x ¡Â L

% Declaro funciones:
p = @(x) (0.*x);
q = @(x) (cr(x)./k0) ;
r = @(x) -fuente(x)/k0 ;

f = @(x) [p(x), q(x), r(x)];
inter = [0 L];
ycd = 6;

L = abs(inter(2) - inter(1))./0.01;
rob = [k0 H H*ue];

%function [x,y]=dif_fin_rob(f,[a b],alpha,[A B C],L)
[x,y]=dif_fin_rob(f,inter,ycd,rob,L);

plot(x,y,'-r');

#La temperatura en el punto medio de la barra:
idx = find(x >= 2.5, 1);
y(idx)
