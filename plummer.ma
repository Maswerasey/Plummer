phi:=G*M/sqrt(r^2+a^2);
rho:=simplify(diff(r*phi,r$2)/r/4*Pi/G);
eqn:=diff(sigma(r)^2*rho,r)=-diff(phi,r)*rho;
