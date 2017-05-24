phiH:=-G*M/(r+a);
rhoH:=M/2/Pi*r/a*1/(r+a)^3;
vr2H:=simplify(int(diff(phiH,r)*rhoH,r)/rhoH,assume=positive);
phiBH:=-G*Mbh/(r);
vr2BH:=simplify(int(diff(phiBH,r)*rhoH,r)/rhoH,assume=positive);
