%{
syms t;
y=t-t.^3+3/5*t^5-1/7*t^7;

t=-1:0.01:1;
val=subs(y);
%}
% options=optimset('GradObj','on');
options=optimset('GradObj','on','Hessian','on');
x2=fmincon('funmin',x1,A',b,[],[],zeros(N,1),avr_price(index),[],options);
% x2=fmincon('funmin',x1,[],[],[],[],zeros(N,1),avr_price(index),[],options);
%%
[s_v,s_o]=sort(x2,'descend');
s_v(1:20)        % rank of personal investment    
uid(s_o(1:20))
sum_value=NN*x2; % rank of total investment of each school
sum_value(s_o(1:20))
temp=TotalNum(index);
temp(s_o(1:20))
temp2=A'*x2;
-temp2(2:7)

%%

[x3,fval]=fminsearch('funmin_uncons',x1);