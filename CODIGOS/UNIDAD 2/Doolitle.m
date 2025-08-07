function [L,U,P] = doolittle_P(A)
  n =length(A(:,1));
  L=zeros(n,n);
  P=eye(n,n);
  U=zeros(n,n);
  for i=1:n
    [~,k]=max(abs(A(i:n,i)));
    k=k(1)+i-1;
    A([i,k],:)=A([k,i],:);
    P([i,k],:)=P([k,i],:);
    L([i,k],:)=L([k,i],:);

    L(i+1:n,i) = A(i+1:n,i)/A(i,i);
    A(i+1:n,i:n) = A(i+1:n,i:n) - L(i+1:n,i)*A(i,i:n);
    U=A;
  endfor

  L = L + eye(n,n);

  %Res = P*A - L*U;
end
