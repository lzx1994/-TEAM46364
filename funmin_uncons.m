function [cost]=funmin_uncons(x)
load Init avr_price TotalNum Risk earning index A b
A=A(index,:);
c=A'*x-b;
if(sum(c>0)~=0)
    cost=1e8;
else
    NN=diag(TotalNum.*Risk.*earning*1.2);
    NN=NN(index,index);
    ss=sfunc(x,avr_price(index)/2);
    cost=-sum(NN*ss);
end
end

function [ss]=sfunc(x,u)
% ss=-1/7*(x./u-1).^7+3/5*(x./u-1).^5-(x./u-1).^3+(x./u-1);
ss=(-1/7*(x./u-1).^7+3/5*(x./u-1).^5-(x./u-1).^3+(x./u-1)+16/35)*35/32;
end