format long;
f = @(x) sin(x) + cos(1+x.^2)-1;
df = @(x) cos(x) - sin(1 + x.^2).*2.*x;

#Grafico para aproximar intervalo:
x = linspace(0,10);
plot(x,f(x),'-r');
hold on;
grid on;
z = @(x) x==0;
plot(x,z(x),'-b');

#Calcular raiz:
tolerancia= 1e-10;
maxit=2000;

[p,it,r,t] = Newton(f,df,8,tolerancia,maxit);
p

