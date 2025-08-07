#Ejer9

disp('Con n=2');
n=2;
f = @(x) x.^2.*exp(-x);
a = 0; b = 1; L=1;
Q=cuad_gauss_c(f,a,b,L,n)


disp('Con n=3');
n=3;
f = @(x) x.^2.*exp(-x);
a = 0; b = 1; L=1;
Q=cuad_gauss_c(f,a,b,L,n)


