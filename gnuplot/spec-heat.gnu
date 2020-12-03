set title 'Specific Heat '.dire
set key autotitle columnhead
unset key
set xlabel "Sampling"
set ylabel "Specific Heat [eV/(K*partic)]"
direcomple=sprintf("%s/spec_heat.txt",dire)
plot direcomple w l
pause -1
