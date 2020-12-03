set title 'Spatial Distribution '.dire

set key autotitle columnhead

unset key

set pm3d map

set dgrid3d 101,101

set size square

set pm3d interpolate 8,8

set palette model CMY rgbformulae 7,5,15

set xlabel "y (Angstrom)"

set ylabel "x (Angstrom)"

direcomple=sprintf("%s/distribucion.txt",dire)

splot direcomple u 1:2:3 t ""


pause -1
