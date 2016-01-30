N=3000;             %The num of unvi
M=10;               %The num of monitory
x=zeros(N,1);       %
R=zeros(N,1);       %
Min=zeros(N,M);%The proportion of minority in univ
m=zeros(M,1);   %The boundary of the investments for the minority
W_low=zeros(N,2);
W_large=zeros(N,2);
w_low=zeros(2,1);
w_large=zeros(2,1);
Sub_Art=zeros(N,1);
Sub_Sci=zeros(N,1);
Sub_Eng=zeros(N,1);
sub_art=0.3;
sub_sci=0.3;
sub_eng=0.4;



f=-R;
A=[R,Min,-W_low,W_large,-Sub_Art,-Sub_Sci,-Sub_Eng]';
b=[1e6;m;-w_low;w_large;-sub_art;-sub_sci;-sub_eng];

x=linprog(f,A,b);