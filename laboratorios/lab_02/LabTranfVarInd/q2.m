clear all; close all; clc;

# criando sinal
imp=@(n) (n==0);
x=@(n) imp(n-1)+2*imp(n-2)+3*imp(n-3)+2*imp(n-4)+imp(n-5);
n=-10:20;
figure(6)
stem(n,x(n))
title('x[n]');

# a
figure(7)
stem(n,x(-n))
title('x[-n]');

# b
figure(8)
stem(n,x(n+6))
title('x[n+6]');

# c
figure(9)
stem(n,x(n-6))
title('x[n-6]');

# d
figure(10)
stem(n, x(3*n))
title('x[3n]');

# e
figure(11)
stem(n, x(n/3))
title('x[n/3]');

# f
figure(12)
stem(n,x(3-n))
title('x[3-n]');
