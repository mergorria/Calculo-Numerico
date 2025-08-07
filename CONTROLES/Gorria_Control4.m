#CONTROL 4
%Datos:
format long;
u=2;
v=1.5.*(10^-5);
n=0.01;  # h = (b-a)/n
L = 1/0.01;
y0 = [0;0;0.332];
inter = [ 0, 0.99 ];

#Planteo PVI con cambio de variables
#cambio de variables:
#y1 = y
#y2 = y' = dy1/dt
#y3 = y'' = dy2/dt2
#dy3/dt = y'''
# Entonces:
# dy3/dt + f(n)y3 =  0
# dy3/dt =  f(n)y3
# y1(0) = y(0) = 0
# y2(0) = y'(0) =  0
# y3(0) = y''(0) =  0.332

f = @(n,y) [y(2); y(3); y(3).*n];
[n,y]=rk4(f, inter, y0, L);
plot(n, y(:,2), 'b', 'LineWidth', 2)
xlabel('n')
ylabel('dy3/dt = n * y3')
grid on
y(end,2)

#Inciso b
espesor = y(end,3).*sqrt( (v.*0.40)./u);

#Inciso c
x = 0.40;  #en metros
integral_fp = 1;
caudal = sqrt(v * u * x)








