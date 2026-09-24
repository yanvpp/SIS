##clear all; close all; clc;
##
##f=@(t) exp(-t).*cos(2*pi*t);
##
##t = -2:2;
##
##f(t)
##
##plot(t, f(t))
##
##xlabel('t');
##ylabel('f(t)');grid;
##
##stem(f(t))
##
##t = -2:0.01:2
##
##plot(t,f(t));
##xlabel('t');
##ylabel('f(t)');
##grid;
##
##fd = @(n,Ts) exp(-n*Ts).*cos(2*pi*n*Ts);
##n = -2:200;
##stem(n,fd(n,0.01))
##
##t = -2:0.01:2;
##f= exp(-t).*cos(2*pi*t);
##
##plot(t,f);
##
##clear all
##
##n = -30:30;
##x = cos(n*pi/12+pi/4);
##figure(2)
##stem(n, x);
##xlabel('n');
##ylabel('x[n]');
##
##amplitude_1 = 5;
##freq_1 = 5;
##amplitude_2 = 2;
##freq_2 = 50;
##
##Fs = 1000;
##time = 0:1/Fs:(1-1/Fs);
##sine_1 = amplitude_1*sin(2*pi*freq_1.*time);
##sine_2 = amplitude_2*sin(2*pi*freq_2.*time);
##noise = randn(1, length(time));
##
##x_clean = sine_1 + sine_2;
##x_noisy = x_clean + noise;
##
##figure(14);
##plot(time, x_clean);
##
##figure(15);
##plot(time, x_noisy);


% tarefas: TRACE OS SEGUINTES SINAIS
% a) (-0.5)^n
## domínios discretos são em passos inteiros
clear all; close all; clc;
n = 1:10;

f=@(n) (-0.5).^n;

figure(1)
stem(n, f(n))

xlabel('n');
ylabel('x[n]');grid;

% b) 2^(-n)
clear all;

n = 1:10;

f=@(n) (2).^(-n);

figure(2)
stem(n, f(n))

xlabel('n');
ylabel('x[n]');grid;

% c) (-2)^n
clear all;

n = 2:20;

f=@(n) (-2).^n;

figure(3)
stem(n, f(n))

xlabel('n');
ylabel('x[n]');grid;

% d) exp(-2*t)
clear all;

t = 1:0.01:10;

f=@(t) exp(-2*t);

figure(4)
plot(t, f(t))

xlabel('t');
ylabel('f(t)');grid;

% e) 2*cos(2*pi*50*t)
clear all;

t = 1:0.01:2;

f=@(t) 2*cos(2*pi*50*t);

figure(5)
plot(t, f(t))

xlabel('t');
ylabel('f(t)');grid;

