clear all; close all; clc;

# criando sinal
u=@(n) n>=0;

xa=@(n) u(n-2)-u(n-6);
xb=@(n) n.*(u(n)-u(n-7));
xc=@(n) (n-2).*(u(n-2)-u(n-6));
xd=@(n) (-n+8).*(u(n-6)-u(n-9));
xe=@(n) (n-2).*(u(n-2)-u(n-6))+(-n+8).*(u(n-6)-u(n-9));

n=-10:20;

# a
figure(9)
stem(n, xa(n))
axis([-3 8 -2 2])
title('x_a(n)');

# b
figure(10)
stem(n, xb(n))
axis([-3 8 -2 8])
title('x_b(n)');

# c
figure(11)
stem(n, xc(n))
axis([-3 10 -2 6])
title('x_c(n)');

# d
figure(12)
stem(n, xd(n))
axis([-3 10 -6 6])
title('x_d(n)');

# e
figure(13)
stem(n, xe(n))
axis([-3 10 -6 6])
title('x_e(n)');
