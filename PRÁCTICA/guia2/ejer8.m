function A = doolittle(A)
n = length(A(:,1));

for k = 1:n-1
	for i = k+1:n
		s=A(i,k)/A(k,k);
		A(i,k) = s;
		for j = k+1:n
			A(i,j) = A(i,j) - s*A(k,j);
		endfor
	endfor
	%Vectorizado
	% A(k+1:n,k) = A(k+1:n,k)/A(k,k);
	%  A(k+1:n,k+1:n) = A(k+1:n,k+1:n) - A(k+1:n,k) * A(k,k+1:n);
endfor
endfunction

%----
function [A,r] = doolittle_p(A)
n = length(A(:,1));
r = 1:n;
for k = 1:n-1
	[~,p] = max(abs(A(r(k:n),k)));
	p = p(1) + k - 1;
	r([p k]) = r([k p]);
	A(r(k+1:n),k) = A(r(k+1:n),k) / A(r(k),k);
	A(r(k+1:n),k+1:n) = A(r(k+1:n),k+1:n)- A(r(k+1:n),k)*A(r(k),k+1:n);
endfor
endfunction

%--- b)

A = [8 4 1; 2 6 2; 2 4 8];
A2 = [5.00e-02, 5.57e+02, -4.00e-02;
      1.98e+00, 1.94e+02, -3.00e-03;
      2.74e+02, 3.11e+00, 7.50e-02];
A3 = [1 2 -1;2 4 0;0 1 -1];
b=[1;2;3];

