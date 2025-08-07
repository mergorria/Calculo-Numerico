%Ej6;
A = [3 1 1; 1 3 -1; 3 1 -5];
b=[5;3;-1];

[x]=gauss(A,b)
[x,it,r_h] = gaussseidel(A,b,[0 0 0]',1000,10e-7)

