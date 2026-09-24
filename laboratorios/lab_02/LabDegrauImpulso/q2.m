clear all; close all; clc;

# a

# criando sinal
u=@(t) t>=0;

xa=@(t) (4*t+4).*(u(t+1)-u(t));
xb=@(t) (-2*t+4).*(u(t)-u(t-2));
x1=@(t) xa(t)+xb(t);

t=-10:0.01:20;

# parte 1, xa(t)
figure(5)
subplot(3,1,1)
plot(t, xa(t))
axis([-5 5 -1 5])
title('x_a(t)')

# parte 2, xb(t)
subplot(3,1,2)
plot(t, xb(t))
axis([-5 5 -1 5])
title('x_b(t)')

# xa(t) + xb(t) = x1(t)
subplot(3,1,3)
plot(t, x1(t))
axis([-5 5 -1 5])
title('x_1(t)')

# final
xfinal1=@(t) (4*t+4).*u(t+1)-6*t.*u(t)+(2*t-4).*u(t-2);
figure(6)
plot(t,xfinal1(t))
axis([-5 7 -5 5])
title('x_1 resultante da manipulação matemática');

# b

# criando o sinal
u=@(t) t>=0;

xa=@(t) (t.^2).*(u(t)-u(t-2));
xb=@(t) (2*t-8).*(u(t-2)-u(t-4));
x2=@(t) xa(t)+xb(t);

t=-10:0.01:20;

# parte 1, xa(t)
figure(7)
subplot(3,1,1)
plot(t, xa(t))
axis([-1 5 -5 5])
title('x_a(t)')

# parte 2, xb(t)
subplot(3,1,2)
plot(t, xb(t))
axis([-1 5 -5 5])
title('x_b(t)')

# xa(t) + xb(t) = x2(t)
subplot(3,1,3)
plot(t, x2(t))
axis([-1 5 -5 5])
title('x_2(t)')

# final
xfinal2=@(t) t.^2.*u(t)-(t.^2-2*t+8).*u(t-2)-(2*t-8).*u(t-4);
figure(8)
plot(t,xfinal2(t))
axis([-5 7 -5 5])
title('x_2 resultante da manipulação matemática')
