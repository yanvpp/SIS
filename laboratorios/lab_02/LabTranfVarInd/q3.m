clear all; close all; clc;

# criando sinal
u=@(t) t>=0;
t=-10:0.01:20;

x=@(t) t.*(u(t)-u(t-1));
figure(13)
plot(t,x(t))
axis([-1 3 -1 2]);

# x1(t)
x1=@(t) x(t+1)+x(-t+1);
figure(14)
plot(t,x1(t))
axis([-3 3 -1 2]);

# x2(t)
x2=@(t) x(t+1)+x(-t+1)+x(t)+x(-t);
figure(15)
plot(t,x2(t))
axis([-3 3 -1 2]);

# x3(t)
x3=@(t) x2(t/2)+x(t/2)+x(-t/2);
figure(16)
plot(t,x3(t))
axis([-3 3 -1 2]);

# x4(t)
x4=@(t) (4/3)*x1(t/2)-(1/3)*x2(t/2);
figure(17)
plot(t,x4(t))
axis([-3 3 -1 2]);

# x5(t)
x5=@(t) x(t+1.5)+x(-t+1.5)+x2(2*t);
figure(18)
plot(t,x5(t))
axis([-3 3 -1 2]);
