## Procedimiento para una integral doble: ejercicio 12

u = @(r,tita) 10 + r.^3*cos(3.*tita)+2.*r.^2*sin(2.*tita);
L = 20;
tita = linspace(-pi,pi, L+1);

for i = 1: L+1
   # integrales dobles;
   Q(i) = intNCcompuesta( @(r) u(r, tita(i),0,1,L,3);

endfor

Ener = simpsoncomp(tita,Q);

