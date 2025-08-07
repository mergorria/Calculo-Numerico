function [I] = simpsoncomp(x,y)
#Supone que los x estan igualmente espaciados (sino lo estuvieran toma puntos del polinomio interpolante)
# y q las listas tienen un numero impar de valores
if mod(length(x),2) == 0
  error("Cantidad par de puntos")
endif

f = @(t) polyval(polyfit(x,y,length(x)-1),t);

L=length(x)-1;

I = intNCcompuesta(f,x(1),x(end),L,3);
endfunction
