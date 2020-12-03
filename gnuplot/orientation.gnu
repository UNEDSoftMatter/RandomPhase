set title 'Orientational Order Parameter '.dire

set key autotitle columnhead

unset key

set xlabel "Sampling"

set ylabel "Orientational Order"

direcomple=sprintf("%s/orientation.txt",dire)

plot direcomple w l

pause -1
