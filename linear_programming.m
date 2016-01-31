clear all;close all;clc;
load Init
%%
f=-ROI(index);
A=A(index,:);
NN=diag(TotalNum.*Risk);
NN=NN(index,index); %Num of each school
N=sum(index);
%%
x1=linprog(NN'*f,A',b,[],[],zeros(N,1),avr_price(index)); % x1 is the money/person for each school 
figure;
hist(x1,10);
%%
[s_v,s_o]=sort(x1,'descend');
s_v(1:10)        % rank of personal investment    
uid(s_o(1:10))
sum_value=NN*x1; % rank of total investment of each school
sum_value(s_o(1:10))
temp=TotalNum(index);
temp(s_o(1:10))
temp2=A'*x1;
-temp2(2:7)
%%
%{
cvx_begin
    variable x2(N)
    minimize(f'*NN*x2+0.1*norm(x2,1));
 subject to
    A'*x2 <= b
    x2>=0
cvx_end
figure;
hist(x2,10);
%}