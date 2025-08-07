%Ejercicio8
semana = 0:6;
cantidad = [432 599 1012 1909 2977 4190 5961];

#a) Polinomio p6 de grado ¡Â 6 (interpolaci¢¥on exacta)
p6 = polyfit(semana, cantidad, 6);
#b) Aproximaci¢¥on lineal (modelo de m¢¥inimos cuadrados grado 1)
p1 = polyfit(semana, cantidad, 1);
%c) Aproximaci¢¥on cuadr¢¥atica (modelo de m¢¥inimos cuadrados grado 2)
p2 = polyfit(semana, cantidad, 2);
#d) Gr¢¥afica + errores cuadr¢¥aticos

% Evaluar en los puntos dados
y6 = polyval(p6, semana);
y1 = polyval(p1, semana);
y2 = polyval(p2, semana);

% Error cuadr¢¥atico medio
ECM6 = mean((cantidad - y6).^2); #Calcula error cuadr¢¥atico medio (ECM) entre los valores reales (cantidad) y los valores predichos por un modelo (y1)
ECM1 = mean((cantidad - y1).^2);
ECM2 = mean((cantidad - y2).^2);

#Errores:
fprintf('ECM modelo grado 6: %.2f\n', ECM6);
fprintf('ECM modelo lineal: %.2f\n', ECM1);
fprintf('ECM modelo cuadr¢¥atico: %.2f\n', ECM2);


% Gr¢¥afica
t = linspace(0, 6, 200);
plot(semana, cantidad, 'ko', 'MarkerFaceColor', 'k'); hold on;
plot(t, polyval(p6, t), 'b-', 'LineWidth', 1.5);
plot(t, polyval(p1, t), 'r--', 'LineWidth', 1.5);
plot(t, polyval(p2, t), 'g-.', 'LineWidth', 1.5);
legend('Datos', 'Polinomio grado 6', 'Modelo lineal', 'Modelo cuadr¢¥atico', 'Location', 'northwest');
title('Evoluci¢¥on de la cantidad de mosquitos');
xlabel('Semana'); ylabel('Cantidad');
grid on;

#e) Predicci¢¥on a la semana 10
s10 = 10;
pred6 = polyval(p6, s10);
pred1 = polyval(p1, s10);
pred2 = polyval(p2, s10);

fprintf('Predicci¢¥on semana 10:\n');
fprintf('Modelo grado 6: %.2f\n', pred6);
fprintf('Modelo lineal: %.2f\n', pred1);
fprintf('Modelo cuadr¢¥atico: %.2f\n', pred2);

#f) Comparaci¢¥on con dato real (14900)
real10 = 14900;
err_rel6 = abs(pred6 - real10) / real10;
err_rel1 = abs(pred1 - real10) / real10;
err_rel2 = abs(pred2 - real10) / real10;

fprintf('Error relativo:\n');
fprintf('Modelo grado 6: %.2f %%\n', 100*err_rel6);
fprintf('Modelo lineal: %.2f %%\n', 100*err_rel1);
fprintf('Modelo cuadr¢¥atico: %.2f %%\n', 100*err_rel2);
