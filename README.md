# Plummer

Here are some results for the projected quantities for a Plummer model that you can use to fit for the black hole.

The first is the projected surface density:

&Sigma; = M a<sup>2</sup> &pi;<sup>-1</sup> (R<sup>2</sup> + a<sup>2</sup>)<sup>-2</sup>


<img src="https://latex.codecogs.com/gif.latex?\Sigma&space;=&space;\frac{M a^2}{\pi}(T,\bar{f})" title="\mathcal{W}(A,f) = (T,\bar{f})" />

The second is the projected velocity dispersion squared without the black hole:

&sigma;<sup>2</sup> = 3 &pi;/64 G M/a (1 + (R/a)<sup>2</sup> )<sup>-1/2</sup>

The square of the velocity dispersion with the black hole is contained within the file blacksigma2.dat. The projected radius is in the first column; the units for the projected radius are a.  The second column contains the velocity dispersion squared in units of G M<sub>bh</sub>/a.

The strategy is to fit for the value of a using the distribution of stars as a function of projected radius and the first equation.  Once you have a, you can fit for the measured square of the velocity dispersion using a sum of the values from the second equation and the data in the file (you can interpolate through the data points --- it works best using a log-log plot).

Both expressions have G M / a in front so we are really interested in the ratio of the two terms which is the ratio of the BH mass to the total mass of the hole.  You can look at the following figure to get an idea of the effect of the hole.  The lower dashed curve is the velocity dispersion squared of the Plummer model and the solid curve is that caused by the black hole.  Here the BH mass is the same as the cluster.  We can measure the velocity dispersion squared at about 0.1 a and if we find it to be within ten percent of being given by the Plummer model that will constrain the BH mass to be less than 0.5 percent of the mass of the cluster. 

![velocity variance as a function of projected radius](blackhole.png)

The other dashed curve is a fitted formula for the black hole dispersion squared.  It isn't pretty but you can use it if you want.
```
  x**(-1.0/3.0)*3*3.1415/64*(2.1+x**2)**(0.25)*((3*3.1415/64)**(12.0/7.0)+x**2)**(-7.0/12.0) 
```
where the units are G M<sub>bh</sub>/a and x is R/a.

<img src="https://latex.codecogs.com/gif.latex?\mathcal{W}(A,f)&space;=&space;(T,\bar{f})" title="\mathcal{W}(A,f) = (T,\bar{f})" />
