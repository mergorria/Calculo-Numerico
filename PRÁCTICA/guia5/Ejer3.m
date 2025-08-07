#Ejercicio3
x = [0 1 3/2 2]';
y = [3 3 13/4 5/3]';

[c, dv] = dif_div(x,y);
Polinomio_Newton = @(x) c(4)*x.^3 + c(3)*x.^2 + c(2)*x + c(1);

% Graficar
z = linspace(0, 3, 300);  % puntos para graficar
PN = Polinomio_Newton(z);
figure;
plot(x, y, 'or', 'MarkerSize', 8, 'LineWidth', 1.5); hold on;
plot(z, PN, 'm--', 'LineWidth', 2);
grid on; grid minor;
xlabel('x'); ylabel('P(x)');
