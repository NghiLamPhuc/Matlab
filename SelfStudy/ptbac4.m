function X=ptbac4(a,b,c,d,e)
P=[a,b,c,d,e];
X=roots(P);
for i=1:length(X)
    disp(['Nghiem thu','',num2str(i),'=','',num2str(X(i))])
end