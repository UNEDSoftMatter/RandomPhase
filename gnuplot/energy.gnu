set title 'Potential Energy '.dire

set xlabel "Sampling"

set ylabel "Energy (eV)"

set key autotitle columnhead

unset key

direcomple=sprintf("%s/energias.txt",dire)

plot direcomple


pause -1
