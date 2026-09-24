clear all; close all; clc;

# criando o sinal
u=@(t) t>=0;
xa=@(t) u(t-5)-u(t-7);
xb=@(t) u(t-5)+u(t-7);
xc=@(t) (t.^2).*(u(t-1)-u(t-2));
xd=@(t) (t-4).*(u(t-2)-u(t-4));
t=-10:0.01:20;
figure(1)

# a
plot(t, xa(t))
axis([0 10 -3 3])
title('x_a(t)')

# b
figure(2)
plot(t, xb(t))
axis([0 10 -3 3])
title('x_b(t)')

# c
figure(3)
plot(t, xc(t))
axis([0 5 -3 5])
title('x_c(t)')

# d
figure(4)
plot(t, xd(t))
axis([0 5 -3 2])
title('x_d(t)')
