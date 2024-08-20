Passband Frequency: 40
Stopband Frequency: 100

What is the filter order and the transfer function
of the lowpass butterworth filter?
Order: n = 3
Transder function:
                     100503.7815
   ---------------------------------------------
   s^3 + 92.9874 s^2 + 4323.3288 s + 100503.7815

Does the filter work as expected?
Yes

Filter order of Chebyshev (Type 1) filter: n = 3
Transfer function of Chebyshev (Type 1) filter:
                    20920.9643
   --------------------------------------------
   s^3 + 29.5129 s^2 + 1635.5045 s + 20920.9643
   
What is the difference between the amplitude response 
of the Butterworth filter and the Chebyshev filter?
Butterworth is superior over the passband region because 
it reaches a maximally flat response (like an ideal filter) while
Chebyshev has ripples over this region. Chebyshev, however, is superior
over the stopband region because the filter gain drops off faster.

Which filter is better?
Chebyshev

Why?
The Chebyshev filter is better because the transition between 
the pass and stop band is faster (closer to an ideal filter) for 
lower filter orders, such as n = 3.

What is the difference between Chebyshev Type 2 and Chebyshev Type 1 filters?
Chebyshev Type 2 filters have more stopband ripples while 
Chebyshev Type 1 filters have more passband ripples.

Which lowpass filter would you prefer?
Elliptic Filter

Why?
Elliptic filter equalizes the ripple between the passband and stopband
regions and has the fastest filter gain drop off. 
