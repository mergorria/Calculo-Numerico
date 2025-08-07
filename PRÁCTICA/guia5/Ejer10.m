#Ejercicio10
v = load('datos_velocidades.txt');
t=0:12:300;%min
t=t'/60; %h

# Determine la funcion de la forma v(t) = c1 sen(2t) + c2t^2 + c3 2^t + c4
# que mejor aproxima a los datos en el sentido de cuadrados minimos.

%OJO EL ORDEN!
f1 = @(t) sin(2*t);
f2 = @(t) t.^2;
f3 = @(t) 2.^t;
f4 = @(t) ones(size(t));

M=[f1(t) f2(t) f3(t) f4(t)];

A=M'*M;
b=M'*v;

disp('Coeficientes');
c=gauss(A,b)

vf= @(t) c(1)*f1(t) + c(2)*f2(t) + c(3)*f3(t) +c(4)*f4(t);

#Velocidad a las 6hs
vf6=vf(6);

#Generar polinomio de grado 6 y evaluarlo
p6=polyfit(t,v,6);
pol6=polyval(p6,6);

#Calcular el error
erfun= nomr(v-vf(t));
erpol=  nomr(v-polyval(p6,t));
