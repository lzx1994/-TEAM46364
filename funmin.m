function [cost,g,H]=funmin(x)
load Init avr_price TotalNum Risk earning index
NN=diag(TotalNum.*Risk.*earning*1.2);
NN=NN(index,index);
ss=sfunc(x,avr_price(index)/2);
cost=sum(NN*ss);
if nargout>1
    g=gfunc(x,avr_price(index)/2);
    if nargout>2
        H=diag(g2func(x,avr_price(index)/2));
    end
end
        
end

function [ss]=sfunc(x,u)
% ss=-1/7*(x./u-1).^7+3/5*(x./u-1).^5-(x./u-1).^3+(x./u-1);
ss=(-1/7*(x./u-1).^7+3/5*(x./u-1).^5-(x./u-1).^3+(x./u-1)+16/35)*35/32;
end

function [g]=gfunc(x,u)
    g=(-(x./u-1).^6+3*(x./u-1).^4-3*(x./u-1).^2+1)./u*35/32;
end

function [gg]=g2func(x,u)
    gg=(-6*(x./u-1).^5+12*(x./u-1).^3-6*(x./u-1))./u./u*35/32;
end
