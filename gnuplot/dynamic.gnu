set xlabel "x (Angstrom)"

set ylabel "y (Angstrom)"

set size square


set key autotitle columnhead

unset key

stats dire.'/dinamica.txt' nooutput

set xrange [0:STATS_max_x]

set yrange [0:STATS_max_y]

set title "Dynamic ".dire

M=(180/STATS_max_x)

direcomple=sprintf("%s/dinamica.txt",dire)

plot direcomple every ::2::ARG1-1 w p pt 7 ps M t ""; pause 2


N=floor(STATS_records/ARG1)

set key at STATS_max_x*1.05,STATS_max_y*1.05

do for [i=2:N] {plot direcomple every ::(i-1)*ARG1::i*ARG1-1 w p pt 7 ps M t sprintf("%.1f\%",i*100.0/N); pause 0.2}

pause -1


