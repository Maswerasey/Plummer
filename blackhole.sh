ctioga2 --name blackhole --ylog blackhole.dat \
	--line-style dashes \
	--math /xrange -2:1 \
	'10**(-x/3)*3*3.1415/64*(2.5+10**(2*x))**(0.2)*((3*3.1415/64)**(15.0/8.0)+10**(2*x))**(-8.0/15.0)' \
	 '3*3.1415/64*(1+10**(2*x))**(-0.5)' \
	 --xrange -2:1 --yrange -2:1 --xlog \
	 -x '$R/a$' -y '$\sigma_R^2 (G M / a)^{-1}$'
#	'10**(-x/3)*3*3.1415/64*(2.2+10**(2*x))**(0.25)*((3*3.1415/64)**(12.0/7.0)+10**(2*x))**(-7.0/12.0)' \
