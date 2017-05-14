ctioga2 --name blackhole --ylog blackhole.dat \
	--line-style dashes \
	--math /xrange -2:1 \
	'10**(-x/3)*3*3.1415/64*(2.1+10**(2*x))**(0.25)*((3*3.1415/64)**(12.0/7.0)+10**(2*x))**(-7.0/12.0)' \
	 '3*3.1415/64*(1+10**(2*x))**(-0.5)' \
	 --xrange -2:1 --yrange -2:1 --xlog \
	 -x '$R/a$' -y '$\sigma_R^2 (G M / a)^{-1}$'
