Lab Problems

Specifications:
PO <= 16%, tr <= 0.2s, ts<= 0.5s,es = 0 and er <= 0.06

es = 0 and er <= 0.06:
er <= 0.06
(8/K) <= 0.06
K >= 133.34

A compensator is required to meet the required specifications
(specification cannot be met solely by adjusting K). A possible 
compensator,Gc(s), with alpha equal to 20 and beta equal to 40 can 
be used to meet the required specifications.The compensate function is
modifited according to the original poles (0 and 20). The modified
compensator functionis applied to the specifications (tr <= 0.2s ts<= 0.5s):


The critical point is shifted from -10 to -20
-20 +- sqrt(400 - K)
In order to satisfy the tr <= 0.2 specification,
-20 +- sqrt(400 - K) >= 15
K >= 625

Take K = 650:
Dampening (z): 0.785
PO: 1.87
Frequency (w): 25.5
ts = (4/(zw)) (Lathi Eqn. 6.83)
ts = 0.200 <= 0.5s
w*tr(z=0.785) = 2.45 (Lathi Fig. 6.39)
tr = 0.096 <= 0.2s









