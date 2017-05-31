rho:=1/(a^2+r^2)^(3/2);
Mr:=int(rho*4*Pi*r,r);
s2cl:=int(G*Mr/r*rho,r)/rho;
s2bh:=int(G*Mbh/r*rho,r)/rho;
columnden:=int(rho*r/sqrt(r^2-R^2),r=R..infinity);
