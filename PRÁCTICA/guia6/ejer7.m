#Ejer7
format long;
x = [0;0.2;0.4;0.6;0.8;1;1.2]; #cm /1000 ordenados
p = [4;3.95;3.89;3.80;3.60;3.41;3.30]; #g/cm^3
A = [100;103;106;110;120;133;149.6]; #cm^2

integrando = p.*A #g/cm

disp('Trapezoidal')
It = trapcomp(x,integrando) #en kg

disp('Simpson')
Is = simpsoncomp(x,integrando) #en kg

% Diferencia relativa
rel_diff = abs(Is - It)/abs(Is)
fprintf('Diferencia relativa porcentual -> ', rel_diff*100);

