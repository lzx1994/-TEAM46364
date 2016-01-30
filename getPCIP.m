function data=getPCIP()

% data [UNITID PCIP-A PCIP-S PCIP-E]

A=[5,9,12,13,16,22,23,24,31,38,39,43,44,46,50,52,54];
E=[4,10,14,15,47,48,49];
S=[1,3,11,19,25,26,27,29,30,40,41,42,45,51];

queryA=makePCIPquery(A);
queryE=makePCIPquery(E);
queryS=makePCIPquery(S);

%querystr=querystr
data=dbquery(char('UNITID',queryA,queryS,queryE));
    
end

function query=makePCIPquery(arr)
    if isempty(arr)
        return
    end
    query=sprintf('PCIP%02d',arr(1));
    for i=2:length(arr)
       query=sprintf('%s+PCIP%02d',query,arr(i));
    end

end
