function [A,r] = doolittle_per(A)
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
