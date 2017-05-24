phiH:=-G*M/(r+a);
rhoH:=M/2/Pi*a/r*1/(r+a)^3;
vr2H:=simplify(int(-diff(phiH,r)*rhoH,r)/rhoH,assume=positive);
phiBH:=-G*Mbh/(r);
vr2BH:=simplify(int(-diff(phiBH,r)*rhoH,r)/rhoH,assume=positive);
sigmaR:=2*int(rhoH*r/sqrt(r^2-R^2),r=R..infinity);
colvr2H:=2*int(rhoH*vr2H*r/sqrt(r^2-R^2),r=R..infinity);
colvr2BH:=2*int(rhoH*vr2BH*r/sqrt(r^2-R^2),r=R..infinity);
for la from -2 to 2 by 0.1 do:
   a:=10^la:
   sR:=evalf(subs({R=1,M=1,Mbh=1,G=1},sigmaR)):
   cvr2H:=evalf(subs({R=1,M=1,Mbh=1,G=1},colvr2H)):
   cvr2BH:=evalf(subs({R=1,M=1,Mbh=1,G=1},colvr2BH)):
   lprint(la,a,sR,cvr2H,cvr2BH,cvr2H/sR,cvr2BH/sT):
od:
