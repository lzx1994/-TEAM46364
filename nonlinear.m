%{
syms t;
y=t-t.^3+3/5*t^5-1/7*t^7;

t=-1:0.01:1;
val=subs(y);
%}

fmincon('funmin',x1,A',b,[],[],zeros(N,1),avr_price(index));