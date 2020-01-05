


for i=0L, 1000 do begin

; Construct a sample gaussian surface in range [-5,5] centered at [2,-3]
x = (findgen(64)/63.0*2.0 - 1.0) * 5.0
y = x
xx = x # (y*0 + 1)
yy = (x*0 + 1) # y
rr = sqrt((xx-1.)^2 + (yy+1.5)^2)
; Gaussian surface with sigma=0.5, peak value of 3, noise with sigma=0.2
z = 3.*exp(-(rr/0.5)^2) + randomn(seed,100,100)*.2
; Fit gaussian parameters A
zfit = mpfit2dpeak(z, a, x, y) 

print, i

endfor

end
