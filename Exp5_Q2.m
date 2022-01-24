A=input('Enter a matrix A');
tol=input('Enter a tolerance value');
x0=input('Enter initial guess');
k=0;
N=input('maximum number of iterations');
[~,n]= size(A);
[~,i]=max(abs(x0));
xi=x0(i);
x0=x0/xi;
while k<=N 
    y=A*x0;
    [~,p]=max(abs(y));
     U=y(p);
      if  U==0
          fprintf('A has the eigenvalue 0, select a new vector x0');
      end   
      x1=y/U;
      error=max(abs(x1-x0));
      if error<tol
          e=U;
          v=x1;
          break
      end
      k=k+1;
      x0=x1;
end
fprintf('The maxium number of itertaions exceeded')
disp(e);
disp(v);




