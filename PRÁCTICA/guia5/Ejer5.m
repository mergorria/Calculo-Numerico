#Ejercicio5
x=linspace(-1,1,21);
f_sp=sin(2*pi*x);

%Datos perturbados
f_p=sin(2*pi*x)+(-1).^[1:21]*1e-4;

# Polinomio perturbado:
p=polyfit(x,f_p,20);
xx=linspace(-1,1,200);
z=polyval(p,xx);

#Spline pertubado:
[a,b,c,d] = trazador_cubico_natural(x,f_p);
n = length(a);
x_aux = x;
M = [d c b a];
S = @(x) a(1)*(x == x_aux (1));
for i=1:n
 S = @(x) S(x) + ...
 polyval(M(i,:), (x - x_aux(i))).*(x>x_aux(i)).*(x<=x_aux(i+1)); %%Eval¢¥ua el polinomio c¢¥ubico correspondiente al subintervalo actual en los puntos
 %%polyval([d(i), c(i), b(i), a(i)], xx(idx) - x(i)) calcula ese polinomio en todos los puntos xx que est¢¥an dentro del intervalo actual.
end

#Graficar Lagrange, Spline y F_sp:
figure;
plot(xx, sin(2*pi*xx), 'k', 'LineWidth', 2); hold on;          % f_sp exacta
plot(xx, z, 'r--', 'LineWidth', 1.5);                          % Polinomio de grado 20
plot(xx, S_vals, 'b-.', 'LineWidth', 1.5);                     % Spline c¢¥ubico
legend('f\_sp (exacta)', 'Polinomio grado 20', 'Spline c¢¥ubico', 'Location', 'Best');
title('Comparaci¢¥on: funci¢¥on exacta, polinomio perturbado y spline perturbado');
xlabel('x'); ylabel('f(x)');
grid on;
