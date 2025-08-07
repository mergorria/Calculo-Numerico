#Ejercicio 5:
%Difusion de Calor

%Datos:
k0 = 1;
L = 3; % L = abs(inter(2) - inter(1))./h;
H = 0;
ue = 0;

fuente = @(x) (20.*sin(5.*(x-1)));

% Declaro funciones:
p = @(x) (0.*x);
q = @(x) (0.*x);
r = @(x) -fuente(x)/k0 ;

f = @(x) [p(x), q(x), r(x)];
inter = [0 L];
ycd = 21;

L = abs(inter(2) - inter(1))./0.01;
rob = [k0 H H*ue];

%function [x,y]=dif_fin_rob(f,[a b],alpha,[A B C],L)
[x,y]=dif_fin_rob(f,inter,ycd,rob,L);

#Temperatura al final de la barra:
y(1,end);

%Graficando
figure;
plot(x, y, 'r-');
hold on;
xlabel('Posici¢¥on sobre la barra (x)');
ylabel('Temperatura (¡ÆC)');
title('Distribuci¢¥on de temperatura a lo largo de la barra');
grid on;


% Parte (b) - Maximo de temperatura:
max(y)
