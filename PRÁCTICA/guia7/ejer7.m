#Ejer7
f = @(t,x) [-t.*x(2);t.*x(1)-t.*x(2)];
t0 = [1;-1];
inter = [0 20];
h = 0.05;
L = 20/h;

[t,y] = euler(f,inter,t0,L)

#[t,y]=rk4(f, inter, t0, L);

x1 = y(:,1);
x2 = y(:,2);
plot(x1,x2)

