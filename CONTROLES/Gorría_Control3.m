#TP3 CONTROL:

format long;
x = [-1, 1, 2, 3, 4];
y = [0.23, 0.25, 0.26, 0.14, 0.06];

% Aproximaci¢¥on del tipo y = A * e^(Bx + C + 7.5)
% ln(y) = ln(A) - (Bx + ln(C) + ln(7.5));

% Ajuste logar¢¥itmico
coef_log = polyfit(x, log(y), 2);
A_log = exp(coef_log(3));
B_log = coef_log(2);
C_log = coef_log(1);

disp('Coef');
A_log
B_log
C_log


%b) ---------------

% Datos del problema
x_datos = [-1 1 2 3 4];
y_datos = [0.23 0.25 0.26 0.14 0.06];

%b) Por spline cubico:

# Funci¢¥on aproximada:
f = @(x) (A_log) ./ (B_log.*e.^(x) + C_log.*x + 7.5);
df = @(x) -A_log .* (B_log.*exp(x) + C_log) ./ (B_log.*exp(x) + C_log.*x + 7.5).^2;

df1 = df(-1);
df2 = df(4);

[S,dS,ddS]=funcion_spline(x_datos,y_datos,df1,df2);
disp('Valor spline:');
val_spline = S(0)


% Si se considera un valor para x=0  de y=0.23 , el error relativo de cada modelo anterior es:

% Evaluaci¢¥on en x = 0
x_eval = 0;

val_exp = f(x_eval)
val_spline = S(x_eval)

y_referencia = 0.23;

% Error relativo para cada m¢¥etodo
disp('Error min cuad:');
error_exp = abs(val_exp - y_referencia) / abs(y_referencia)
disp('Error spline:');
error_spline = abs(val_spline - y_referencia) / abs(y_referencia)

