function [c d] = funcn(x)
load Init A b index
A=A(index,:);
c=A'*x-b;
d=[];
end

