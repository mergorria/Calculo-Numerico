% Ejercicio 1:

#La velocidad de un paracaidista que cae se puede modelar con la siguiente ecuaci¢¥on: cv=gm(1-e-(c/m)t)
#(a) Determine la masa m que deber¢¥ia tener un paracaidista cuyo coeficiente de arrastre c=17kg/s, de modo tal que a los 9s
# alcance una velocidad v=35m/s . (Dar el resultado con 5 cifras exactas).

%m=Respuesta 67,81985

%Datos
g = 9.8;
c = 17;
t = 9;
v= 35;

f = @(x) (g .* x .* (1 - e .^ (-t .* (c ./ x)) ) ) - (c .* v);

%Grafico la funci¢¥on:

x = linspace(0,2);
plot(x,f(x),'-r');
hold on; grid on grid minor;
z = @(x) x==0;
plot(x,z(x),'-b');

% a) Biseccion;

[p_raiz,iteraciones,residuo,tempo] = Biseccion (f,0,100,10e-5,2000);

disp('La masa debe ser de: ');
p_raiz;


#(b) Si la masa del paracaidista es de 73kg el coeficiente de arrastre deber¢¥ia ser c=17kg/s  de modo tal que a los 9s
#alcance una velocidad v=35m/s . (Dar el resultado con 5 cifras exactas).

% Respuesta 18,29847

g = 9.8;
t = 9;
m = 73;
v= 35;
%Grafico:
f = @(x) (g .* m .* (1 - e .^ (-t .* (x ./ m)) ) ) - (x .* v);

x = linspace(0,25);
plot(x,f(x),'-r');
hold on;
[p_raiz,iteraciones,residuo,tempo] = Biseccion (f,15,25,10e-5,2000);

disp('El coeficiente de arrastre debe ser de: ');
p_raiz;


