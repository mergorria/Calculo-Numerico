function [P, L]=aux_Lagrange(x,y)
pkg load symbolic
syms X

n = length(x);

P = 0;
for i = 1:n
    L = 1;
    for j = 1:n
        if j != i
            L = L * (X - x(j)) / (x(i) - x(j));
        end
    end
    P = P + y(i) * L;
end

P = expand(P);  % Expande el polinomio a la forma est¢¥andar ax^3 + bx^2 + cx + d
disp('Polinomio de Lagrange:');
disp(P);
