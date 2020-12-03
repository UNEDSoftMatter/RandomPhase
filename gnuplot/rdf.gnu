set title 'Radial Distribution Function '.dire

set key autotitle columnhead

unset key
set xlabel "r(Angstrom)"

direcomple=sprintf("%s/rdf.txt",dire)

plot direcomple w l

pause -1
