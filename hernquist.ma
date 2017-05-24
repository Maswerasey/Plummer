phiH:=-G*M/(r+a);
rhoH:=M/2/Pi*a/r*1/(r+a)^3;
vr2H:=simplify(int(-diff(phiH,r)*rhoH,r)/rhoH,assume=positive);
phiBH:=-G*Mbh/(r);
vr2BH:=simplify(int(-diff(phiBH,r)*rhoH,r)/rhoH,assume=positive);
sigmaR:=2*int(rhoH*r/sqrt(r^2-R^2),r=0..infinity);
colvr2H:=2*int(rhoH*vr2H*r/sqrt(r^2-R^2),r=0..infinity);
colvr2BH:=2*int(rhoH*vr2BH*r/sqrt(r^2-R^2),r=0..infinity);
