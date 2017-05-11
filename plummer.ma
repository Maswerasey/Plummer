phi:=G*M/sqrt(r^2+a^2);
rho:=simplify(diff(r*phi,r$2)/r/4*Pi/G);
eqn:=diff(sigma2(r)*rho,r)=(diff(phi,r)+G*Mb/r)*rho;
res:=dsolve(eqn,sigma2(r));
s1:=simplify(subs(_C1=0,subs(res,sigma2(r))),assume=positive);
limit(s1,Mb=0);
s1bh:=subs({Mb=0.01,G=1,M=1,a=1},s1);
plot(s1bh,r=0.01..2);
