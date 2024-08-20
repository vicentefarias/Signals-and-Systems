Passband: 40
Stopband: 100

What is the filter order and transfer function for each
bandpass filter?
Butterworth 
    filter order: n = 3
    transfer function:
                100503.7815
   ---------------------------------------------
   (100/s)^3 + 92.9874 (100/s)^2 + 4323.3288(100/s) + 100503.7815
    
   
Chebyshev Type 1
    filter order:n = 3
    transfer function:
    20920.9643
   --------------------------------------------
   (100/s)^3 + 29.5129 (100/s)^2 + 1635.5045 (100/s) + 20920.9643
   
Chebyshev Type 2
    filter order: n = 3
    transfer function:
    19.8963 (100/s)^2 + 115517.9654
   ---------------------------------------------
   (100/s)^3 + 92.7393 (100/s)^2 + 4102.3593 (100/s) + 115517.9654
    

Elliptic
    filter order: n = 2
    transfer function:
    0.1 (100/s)^2 + 1120.8048
   ---------------------------
   (100/s)^2 + 29.8682 (100/s) + 1411.0097
 
Do the filters behave as expected?
Yes
