#Ejercicio Recuperatorio P2 2024
x = [0.2 0.4 0.6 0.8 1.0 1.2];
y = [3.20 5.32 6.91 8.62 10.04 11.44];

# f(x) = A * x^B
# ln(y) = ln(A) + B*ln(x) = B*ln(x) + ln(A)
# Y = a*X + b; donde Y = ln(y), X = ln(x), a = B, b = ln(A);

coef = polyfit(log(x), log(y), 1);
B = coef(1)
A = e^coef(2)

f = @(x) A * x.^B;

# (b) Error para x = 0.8
x_eval = 0.8;
y_teorico = f(x_eval);
y_real = 8.62;
error = abs(y_real - y_teorico);


# (c) Predicci¢¥on para x = 2
x_pred = 2;
y_pred = f(x_pred);

