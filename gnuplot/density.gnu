set title 'Density Distribution Function '.dire

set key autotitle columnhead

unset key

set xlabel "Density/Ideal Gas Density"

set ylabel "Probability"

direcomple=sprintf("%s/density_distribution.txt",dire)

plot direcomple w l

pause -1
