rho:=1/(1+r^2)^(3/2);
Mr:=int(rho*4*Pi*r^2,r);
s2cl:=int(G*Mr/r^2*rho,r)/rho;
s2bh:=int(G*Mbh/r^2*rho,r)/rho;
columnden:=int(rho*r/sqrt(r^2-R^2),r=R..infinity);
