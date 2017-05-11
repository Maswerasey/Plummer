phi:=G*M/sqrt(r^2+a^2);
rho:=simplify(diff(r*phi,r$2)/r/4*Pi/G);
eqn:=diff(sigma(r)^2*rho,r)=-diff(phi,r)*rho;
res:=dsolve(eqn,sigma(r));
s1:=simplify(subs(_C1=0,subs(res[1],sigma(r))),assume=positive);
s2:=simplify(subs(_C1=0,subs(res[2],sigma(r))),assume=positive);

