clear all; close all; clc;

# criando sinal
u=@(t) t>=0;
t=-10:0.01:20;

# a
x=@(t) t.*(u(t)-u(t-1))+(-t+2).*(u(t-1)-u(t-2));
figure(19)
subplot(4,1,1)
plot(t,x(t))
title('x(t)')
axis([-3 3 -1 2]);
subplot(4,1,2)
plot(t,x(-t))
title('x(-t)')
axis([-3 3 -1 2]);
xp=@(t) (x(t)+x(-t))/2;
subplot(4,1,3)
plot(t,xp(t))
title('x_p(t)')
axis([-3 3 -1 2]);
xi=@(t) (x(t)-x(-t))/2;
subplot(4,1,4)
plot(t,xi(t))
title('x_i(t)')
axis([-3 3 -2 2]);

# b
xb=@(t) x(-t)+t.*(u(t)-u(t-1))+u(t-1);
figure(20)
subplot(4,1,1)
plot(t,xb(t))
title('x(t)')
axis([-10 10 -1 2]);
subplot(4,1,2)
plot(t,xb(-t))
title('x(-t)')
axis([-10 10 -1 2]);
xp=@(t) (xb(t)+xb(-t))/2;
subplot(4,1,3)
plot(t,xp(t))
title('x_p(t)')
axis([-10 10 -1 2]);
xi=@(t) (xb(t)-xb(-t))/2;
subplot(4,1,4)
plot(t,xi(t))
title('x_i(t)')
axis([-10 10 -2 2]);

# c
x=@(n) n>=0;
xc=@(n) x(n)-x(-n-1);
n=-10:10;
figure(21)
subplot(4,1,1)
stem(n,xc(n))
title('x[n]')
axis([-10 10 -2 2]);
subplot(4,1,2)
stem(n,xc(-n))
title('x[-n]')
axis([-10 10 -2 2]);
xp=@(n) (xc(n)+xc(-n))/2;
subplot(4,1,3)
stem(n,xp(n))
title('x_p[n])')
axis([-10 10 -2 2]);
xi=@(n) (xc(n)-xc(-n))/2;
subplot(4,1,4)
stem(n,xi(n))
title('x_i[n])')
axis([-10 10 -2 2]);

# d
x=@(n) n==0;
xd=@(n) x(n)+2*x(n-1)+3*x(n-2)+x(n-7);
n=-10:10;
figure(22)
subplot(4,1,1)
stem(n,xd(n))
title('x[n]')
axis([-8 8 -4 4]);
subplot(4,1,2)
stem(n,xd(-n))
title('x[-n]')
axis([-8 8 -4 4]);
xp=@(n) (xd(n)+xd(-n))/2;
subplot(4,1,3)
stem(n,xp(n))
title('x_p[n])')
axis([-8 8 -4 4]);
xi=@(n) (xd(n)-xd(-n))/2;
subplot(4,1,4)
stem(n,xi(n))
title('x_i[n])')
axis([-8 8 -4 4]);

# e
x=@(n) n==0;
xe=@(n) -x(n+4)+2*x(n+3)+2*x(n+2)+x(n+1)+x(n)+2*x(n-1)+x(n-2)-x(n-3);
n=-10:10;
figure(23)
subplot(4,1,1)
stem(n,xe(n))
title('x[n]')
axis([-5 5 -2 2]);
subplot(4,1,2)
stem(n,xe(-n))
title('x[-n]')
axis([-5 5 -2 2]);
xp=@(n) (xe(n)+xe(-n))/2;
subplot(4,1,3)
stem(n,xp(n))
title('x_p[n])')
axis([-5 5 -2 2]);
xi=@(n) (xe(n)-xe(-n))/2;
subplot(4,1,4)
stem(n,xi(n))
title('x_i[n])')
axis([-5 5 -2 2]);

# f
u=@(t) t>=0;
x=@(t) (sin(4*pi*t)).*(u(t)-u(-t));
figure(24)
plot(t, x(t))
axis([-2 2 -2 2])
