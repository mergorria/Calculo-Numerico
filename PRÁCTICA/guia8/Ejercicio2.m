#Ejercicio 2

% Declaro funciones:
p = @(x) (-2./x);
q = @(x) (2./x.^2);
r = @(x) (sin(log(x)))./(x.^2);

% Intervalos y datos:
yc = [1 2];
inter = [1 2];
h = [0.1 0.01];

f = @(x) [p(x), q(x), r(x)];

% Soluci¢¥on exacta:
c2 = 1/70 * (8 - 12*sin(log(2)) - 4*cos(log(2)));
c1 = 11/10 - c2;
y_real_func = @(x) c1.*x + c2./x.^2 - (3/10).*sin(log(x)) - (1/10).*cos(log(x));

errores = zeros(1, length(h));

%Para Disparo Lineal:
for i = 1:length(h)
  L = 1/h(i);
  [xd, yd] = disparo_lineal(f, inter, yc, L);

  y_real = y_real_func(xd);

  % Calculo del error absoluto m¢¥aximo:
  error_abs = norm(abs(y_real - yd));
  errores(i) = error_abs;

  % Gr¢¥afico:
  figure(i);
  plot(xd, yd, '-b', 'DisplayName', 'Aprox. Num¢¥erica');
  hold on;
  plot(xd, y_real, '-g', 'DisplayName', 'Soluci¢¥on Exacta');
  title(sprintf('h = %.3f', h(i)));
  legend('show');
  xlabel('x'); ylabel('y');
  grid on;
endfor

%Para dif finita de dir
for i = 1:length(h)
  L = 1/h(i);
  [xfd,yfd]=dif_fin_dir(f,inter,yc,L)

  y_real = y_real_func(xd);

  % Calculo del error absoluto m¢¥aximo:
  error_abs = norm(abs(y_real - yd));
  errores(i) = error_abs;

  % Gr¢¥afico:
  figure(i);
  plot(xfd, yfd, '-b', 'DisplayName', 'Aprox. Num¢¥erica');
  hold on;
  plot(xd, y_real, '-g', 'DisplayName', 'Soluci¢¥on Exacta');
  title(sprintf('h = %.3f', h(i)));
  legend('show');
  xlabel('x'); ylabel('y');
  grid on;
endfor


%Para dif finitas de robin

for i = 1:length(h)
  L = 1/h(i);
  [xr,yr]=dif_fin_rob(f,inter,yc(1),[0 1 yc(2),L)
  y_real = y_real_func(xr);

  % Calculo del error absoluto m¢¥aximo:
  error_abs = norm(abs(y_real - yr));
  errores(i) = error_abs;

  % Gr¢¥afico:
  figure(i);
  plot(xr, yr, '-b', 'DisplayName', 'Aprox. Num¢¥erica');
  hold on;
  plot(xd, y_real, '-g', 'DisplayName', 'Soluci¢¥on Exacta');
  title(sprintf('h = %.3f', h(i)));
  legend('show');
  xlabel('x'); ylabel('y');
  grid on;
endfor







