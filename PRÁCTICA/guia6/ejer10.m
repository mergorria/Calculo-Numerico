#Ejer10
format long;
#Datos:
f = @(x) 20*x-((x.^3)/5);
df = @(x) 20-(3/5)*(x.^2);
integrando = @(x) 2*pi*f(x).*sqrt(1+df(x).^2);

#Calculo integrales

disp('Para un solo intervalo: (L=1)');
Integral_cuad_gauss_n3 = cuad_gauss_c(integrando,0,2,1,3)
Integral_simp_1L = intNCcompuesta(integrando,0,2,1,3)

disp('Para 5 subintervalos: (L=5)');
Integral_simp_5L = intNCcompuesta(integrando,0,2,5,3)
Integral_trap_5L = intNCcompuesta(integrando,0,2,5,2)

disp('Seg¢¥un octave:');

Int_gauss_octave = quad(integrando,0,2)
