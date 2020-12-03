set title 'Orientational Order Correlation '.dire

set key autotitle columnhead

unset key

set xlabel "r(Ang)"

set ylabel "Orientational Order Correlation"

direcomple=sprintf("%s/orient_correlation.txt",dire)

plot direcomple w l

pause -1
