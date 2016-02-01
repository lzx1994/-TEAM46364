%visualization
result=x1;

[s_v,s_o]=sort(x1,'descend');
I_p=s_v(1:20)        % rank of personal investment    
Univ_ID=uid(s_o(1:20)) % the ID of school
sum_value=NN*x1; % rank of total investment of each school
sum_value(s_o(1:20));
temp=TotalNum(index);
temp(s_o(1:10));
temp2=A'*x1;
-temp2(2:7);
figure;
plot(s_v);
figure;
plot(sum_value(s_o));
