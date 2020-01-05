;
;
;
;



;--- Ignore Y array, only use radial coordinates
FUNCTION exp_profile2, X, Y, P
  return,  exp( - (X/p[0]) )
END


np = 64L

xc  = ( ( (dindgen(np)/(np-1.0)) # (dblarr(np) + 1) )*2.0 - 1)
yc  = ( ( (dblarr(np) + 1) # (dindgen(np)/(np-1.0)) )*2.0 - 1)
rad = sqrt(xc^2 + yc^2)

;--- Define random scales
p = randomu(seed, 1000)*0.6+0.2  ;--- (0.2-0.8)

pr = fltarr(1000)

FOR i=0L, 999 DO BEGIN

   zi = exp_profile2(rad, rad, p[i])

   zt  = zi + (randomn(seed, np,np)  )*0.1
   
   p0 = [0.5]
   p_fit = mpfit2dfun('exp_profile2', rad, rad, zt, sz, p0, /QUIET)
 
   pr[i] = p_fit

   print, i, '----'

ENDFOR


plot, p, pr, psym=3, xrange=[0.1,0.9],yrange=[0.1,0.9]


print, '>>> error (std) = ', sqrt(variance(p-pr))




end
