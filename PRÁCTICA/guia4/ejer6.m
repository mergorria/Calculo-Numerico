#Ejercicio 6

#Datos:
a = 0.401;
b = 42.7e-6;
N = 1000;
T = 300;
p =  3.5e7;
k = 1.3806503e-23
tolerancia = 1e-12;

#Defino la funcion
f = @(V) (p + a.*(N./V).^2).*(V - N.*b) - k.*N.*T;

x = linspace(-10, 10, 100);   ##Genera un vector con n valores equidistantes entre a y b.
y = f(x);
plot(x, y); ##Dibuja la gr¢¥afica de y frente a v.
xlabel('Volumen (V) [m^3]');
ylabel('f(V)');
hold on;
grid on;  % Activar la cuadr¢¥icula

a_i = -1;
b_i = 1;

[p,it,r,t] = Biseccion (f,a_i,b_i,tolerancia,maxit)

disp('Raiz:');
p;


