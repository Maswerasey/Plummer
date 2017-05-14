# Plummer

Here are some results for the projected quantities for a Plummer model that you can use to fit for the black hole.

The first is the projected surface density:

&Sigma; = M a<sup>2</sup> &pi; (R<sup>2</sup> + a<sup>2</sup>)<sup>-2</sup>

The second is the projected velocity dispersion squared without the black hole:

&sigma;<sup>2</sup> = 3 &pi;/64 G M/a (1 + (R/a)<sup>2</sup> )<sup>-1/2</sup>

The square of the velocity dispersion with the black hole is contained within the file blacksigma2.dat. The projected radius is in the first column; the units for the projected radius are a.  The second column contains the velocity dispersion squared in units of G M<sub>bh</sub>/a.

The strategy is to fit for the value of a using the distribution of stars as a function of projected radius and the first equation.  Once you have a, you can fit for the measured square of the velocity dispersion using a sum of the values from the second equation and the data in the file (you can interpolate through the data points --- it works best using a log-log plot).

Both expressions have G M / a in front so we are really interested in the ratio of the two terms which is the ratio of the BH mass to the total mass of the hole.  You can look at the following figure to get an idea of the effect of the hole.

![velocity variance as a function of projected radius](blackhole.png)

