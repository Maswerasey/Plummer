phi:=G*M/sqrt(r^2+a^2);
rho:=simplify(diff(r*phi,r$2)/r/4*Pi/G);
eqn:=diff(sigma2(r)*rho,r)=(diff(phi,r)+G*Mb/r)*rho;
res:=dsolve(eqn,sigma2(r));
s1:=simplify(subs(_C1=0,subs(res,sigma2(r))),assume=positive);


