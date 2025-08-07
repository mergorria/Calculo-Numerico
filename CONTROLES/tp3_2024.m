#TP3 2024
f = @(x) 3*(x+0.5).*sin((x-2.7)/2).^4;
df = @(x) 3*(sin((x-2.7)/2)).^4 + 6*(x+0.5).*(sin((x-2.7)/2)).^3 .* cos((x-2.7)/2);
x_datos = linspace(0,2.4,11);

y_datos = f(x_datos);

df1 = df(0);
df2 = df(2.4);

[S,dS,ddS]=funcion_spline(x_datos,y_datos,df1,df2);#Spline sujeto

plot(x_datos,f(x_datos),x_datos,S(x_datos))

S_1metro = S(1) #Radio segun spline
Y_1metro = f(1)

err = abs(S_1metro-Y_1metro)#Error del modelo

