clear all; close all; clc;

# criando sinal
u=@(t) t>=0;

x1=@(t) (t+1).*(u(t+2)-u(t+1));
x2=@(t) (u(t+1)-u(t));
x3=@(t) 2*(u(t)-u(t-1));
x4=@(t) (-t+2).*(u(t-1)-u(t-2));
x=@(t) x1(t)+x2(t)+x3(t)+x4(t);

t=-10:0.01:20;

figure(1)
subplot(5,1,1)

plot(t, x1(t))
subplot(5,1,2)

plot(t, x2(t))
subplot(5,1,3)

plot(t, x3(t))
subplot(5,1,4)

plot(t, x4(t))
subplot(5,1,5)

plot(t, x(t))
title('x(t)');

# a
xa = @(t) x(t-1);
figure(2)
plot(t, xa(t));
title('x(t-1)');
axis([-5 6 -2 3])

# b
xb_aux=@(t) x(t+2);
xb=@(t) xb_aux(-t);
figure(3)
subplot(2,1,1)
plot(t, xb_aux(t));
title('x(t+2)');
axis([-6 2 -2 3])
subplot(2,1,2)
plot(t, xb(t));
title('x(-t+2)');
axis([-2 6 -2 3])

# c
xc_aux=@(t) x(t+1);
xc=@(t) xc_aux(2*t);
figure(4)
subplot(2,1,1)
plot(t, xc_aux(t))
title('x(t+1)');
axis([-4 3 -2 3])
subplot(2,1,2)
plot(t, xc(t))
title('x(2t+1)');
axis([-3 3 -2 3])

# d
xd_aux=@(t) x(t+4);
xd=@(t) xd_aux(-t/2);
figure(5)
subplot(2,1,1)
plot(t, xd_aux(t))
title('x(t+4)');
axis([-10 2 -2 3])
subplot(2,1,2)
plot(t, xd(t))
title('x(-t/2+4)');
axis([-2 16 -2 3])
