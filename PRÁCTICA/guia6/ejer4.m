% Ej4TP
format long
fa = @(x) sin(pi*x);
fb = @(x) 1./(1+x.^2);
% Soluciones anal¢¥iticas (evaluando la integral definida);
Ia=2/pi;
Ib=atan(5)-atan(-5);
% Ponemos el vector error en cero
err=[];
% Generamos puntos para la graficaci¢¥on
xa=linspace(0,5,201);
xb=linspace(-5,5,201);
% Calculamos por integracion num¢¥erica compuesta, pero con L=1
% es decir un solo intervalo, con diferentes cuadraturas.
for n=2:13
  Q1 = intNCcompuesta(fa,0,5,1,n);
  Q2 = intNCcompuesta(fb,-5,5,1,n);
  err=[err; abs(Ia-Q1) abs(Ib-Q2)];

  % -
  subplot(2,1,1)
  xia = linspace(0,5,n);
  % Graficamos la funcion y el polinomio que la aproxima y calcula
  % por integraci¢¥on num¢¥erica.
  plot(xa,fa(xa),xa,polyval(polyfit(xia,fa(xia),n-1),xa))
  grid on, grid minor
  title('Integracion funcion sin(pi*x), Analitica-Numericas,L=1');
  legend('Funcion analitica', 'Polinomio Interpolante gr <= n','location', 'north')
  txt = text(1, 0.5, ''); % crea el objeto de texto en (1, 0.5)
  set(txt, 'String', sprintf('n = % 3i', n)); % actualiza el n utilizado
  xlabel('ptos x')
  ylabel('f(x) Pn(x)')
 % -
  subplot(2,1,2)
  xib = linspace(-5,5,n);
  plot(xb,fb(xb),xb,polyval(polyfit(xib,fb(xib),n-1),xb))
  title('Integracion funcion: 1/(1+x^2), Analitica-Numericas,L=1');
  grid on, grid minor
  %legend('Funcion analitica', 'Polinomio Interpolante gr <= n')
  txt = text(1, 0.5, ''); % crea el objeto de texto en (1, 0.5)
  set(txt, 'String', sprintf('n = % 3i', n)); % actualiza el n utilizado
  xlabel('ptos x')
  ylabel('f(x) Pn(x)')
  pause(1)
endfor
disp('Error:');
err

disp('Error1:');
E1=err(:,1)
disp('Error2:');
E2=err(:,2)

%--
nn=linspace(2,13,12)';
figure(2)
% Graficamos el error para la funci¢¥on: sin(pi*x)
plot(E1,'-b')
grid on; grid minor;
title('Variacion del Error funcion sin(pi*x)')
figure(3)
% Graficamos el error para la funci¢¥on: sin(pi*x)
plot(E2,'-k')
grid on; grid minor;
title('Variacion del Error funcion 1/(1+x^2)')
