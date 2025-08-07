#Ejercicio2:

x = [3 5 7 9]';
y = [1.2 1.7 2.0 2.1]';


[P, L] = Lagrange(x,y);
Polinomio_Lagrange = @(x) P(4)*x.^3 + P(3)*x.^2 + P(2)*x + P(1);
[c, dv] = dif_div(x,y);
Polinomio_Newton = @(x) c(4)*x.^3 + c(3)*x.^2 + c(2)*x + c(1);

%???
#Polinomio_CI = @(x)

% Graficar ambos
z = linspace(3, 9, 300);  % puntos para graficar
PL = Polinomio_Lagrange(z);
PN = Polinomio_Newton(z);

figure;
plot(x, y, 'or', 'MarkerSize', 8, 'LineWidth', 1.5); hold on;
plot(z, PL, 'b-', 'LineWidth', 2);
plot(z, PN, 'm--', 'LineWidth', 2);
grid on; grid minor;
legend('Datos', 'Pol. Lagrange', 'Pol. Newton');
title('Interpolaci¢¥on polin¢¥omica: Lagrange vs Newton');
xlabel('x'); ylabel('P(x)');
