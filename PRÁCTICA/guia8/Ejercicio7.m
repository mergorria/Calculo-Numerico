#Ejercicio 7

%Disipador de Calor

% y'' = p(x)y' + q(x) y + r(x) para x en [a,b];
% y(a) = alpha, Ay'(b) + By(b) = C

%Datos:
W1 = 2; %width
L = 6;
L1 = 4;
D = 0.2; %diam
k = 2.04;
H = 6e-3;
ue = 40; %Temperatura del ambiente
ycd= 200; %Temperatura del dispositivo
inter = [0 L];


%Funciones:
p = @(x) 1./L-x;
q = @(x) (H./k).*((2./D)+2.*L./W1.*(L-x));
r = @(x) -(H./k).*((2./D)+2.*L./W1.*(L-x)).*ue;

f =@(x) [p(x) q(x) r(x)];
rob = [k H H*ue];
h = 0.01;
L = abs(inter(2)-inter(1))./h;

[x,y] = dif_fin_rob(f,inter,ycd,rob,L);

plot(x,y,'-b');

%Segunda parte:
A = W1*D; %Area
phi = @(x) ((-k.*A)./h).*(y(x)-ycd);
phi(W1);

%La seccion transversal se calcula a partir de ->


