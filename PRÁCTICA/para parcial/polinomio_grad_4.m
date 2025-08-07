#Para que x sea un punto fijo x = p(x)
# por lo tanto uso 0 = p(x) - x;
# p_original = @(x) 230.*x.^4 + 18.*x.^3 + 9.*x.^2 - 221.*x - 9;

format long
%Restandole x:
p = @(x) 230.*x.^4 + 18.*x.^3 + 9.*x.^2 - 222.*x - 9;

#Grafico para aproximar intervalo:
x = linspace(-1,1);
plot(x,f(x),'-r');
hold on;
grid on;
z = @(x) x==0;
plot(x,z(x),'-b');

#Datos para bisecci¢¥on:
a= -1;
b= 1;
tolerancia = 1e-6;
maxit = 2000;

[p_menor,it,r,t] = Biseccion (f,-1,0,tolerancia,maxit);
p_menor

[p_mayor,it,r,t] = Biseccion (f,0,1,tolerancia,maxit);
p_mayor


