phi:=-G*M/sqrt(r^2+a^2);
rho:=simplify(diff(r*phi,r$2)/r/4*Pi/G);
eqn:=diff(sigma2(r)*rho,r)=-diff(phi,r)*rho;
res:=dsolve(eqn,sigma2(r));
s2:=simplify(subs(_C1=0,subs(res,sigma2(r))),assume=positive);
eqnbh:=diff(sigma2(r)*rho,r)=-diff(-G*Mb/r,r)*rho;
resbh:=dsolve(eqnbh,sigma2(r));
s2bh:=simplify(subs(_C1=0,subs(resbh,sigma2(r))),assume=positive);
s2bh2:=int(rho*G*Mb/r/r,r);
s2bhval:=simplify((limit(s2bh2,r=infinity)-s2bh2)/rho,assume=positive);
asympt(s2bhval,r);
hld:=subs({G=1,Mb=1,a=1},s2bhval);
for lr from -2 to 2 by 0.1 do
  lprint(lr,evalf(subs(R=10^lr,hld)));
od:
quit;
columnden:=simplify(int(rho*r/sqrt(r^2-R^2)*2,r=R..infinity),assume=positive);
s2column:=simplify(int(rho*s2*r/sqrt(r^2-R^2),r=R..infinity)/columnden,assume=positive);
s2bhcolumn:=simplify(int(rho*s2bhval*r/sqrt(r^2-R^2),r=R..infinity)/columnden,assume=positive);
hld:=subs({G=1,Mb=1,a=1},s2bhcolumn);
for lr from -2 to 2 by 0.1 do
  lprint(lr,evalf(subs(R=10^lr,hld)));
od:
