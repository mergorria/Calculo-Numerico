#Ejer9
format long;
# y''' + 4y''+5y'+2y = -4sent(t) - 20cos(t)
#cambio de variables:
#y1 = y
#y2 = y' = dy1/dt
#y3 = y'' = dy2/dt2
#dy3/dt = y'''
# Entonces:
# dy3/dt + 4y3 + 5y2 + 2y1 =  -4sent(t) - 20cos(t)
# dy3/dt =  -4sent(t) - 2cos(t) -4y3 - 5y2 - 2y1
# y1(0) = y(0) = 1
# y2(0) = y'(0) = 0
# y3(0) = y''(0) = -1

f = @(t, y) [y(2); y(3); -4.*sin(t) - 2.*cos(t) - 4.*y(3) - 5.*y(2) - 2.*y(1)];

y0 = [1; 0; -1];
inter1 = [0, 2.5];
L1 = 10000;
[t1,y1]=rk4(f, inter1, y0, L1);
y1(end,1)
plot(t1, y1(:,1), '-r');
hold on, grid on, grid minor;

inter2 = [0,15];
L2 = 10000;
[t2,y2]=rk4(f, inter2, y0, L2);
plot(t2, y2(:,2), '-b');
hold on, grid on, grid minor;
plot(t2, y2(:,3), '-g');
y2(end,1)


