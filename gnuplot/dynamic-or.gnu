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

set palette defined ( 0 "black", 1 "blue", 2 "red", 3 "orange" , 4 "black" ) 
set cbrange [-180.0:180.0]

direcomple=sprintf("%s/dinamica.txt",dire)

plot direcomple u 1:2:($3*1.5):4 every ::2::ARG1-1 w p pt 7 linecolor palette ps var t ""; pause 2

set key at STATS_max_x*1.05,STATS_max_y*1.05

N = floor(STATS_records/ARG1)

do for [i=2:N] {plot direcomple u 1:2:($3*1.5):4 every ::(i-1)*ARG1::i*ARG1-1 w p pt 7 linecolor palette ps var t sprintf("%.1f\%",i*100.0/N); pause 0.2}
pause -1
