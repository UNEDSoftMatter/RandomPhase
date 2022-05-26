set xlabel "x (Angstrom)"
set ylabel "y (Angstrom)"
set size square

set key autotitle columnhead
unset key
stats dir.'/dinamica.txt' nooutput
set xrange [0:STATS_max_x]
set yrange [0:STATS_max_y]
minor=ARG3
major=ARG2
set style fill solid 0.8

xf(phi) = (major/3)*cos(phi)
yf(phi) = (major/3)*sin(phi)
set key at STATS_max_x*(-0.05),STATS_max_y*(-0.05)
#set palette defined ( 0 "black", 1 "grey", 2 "black" )
set palette defined ( 0 "black", 1 "yellow", 2 "black")
set cbrange [0:180]



N = floor(STATS_records/ARG1)
i=0
while (i<N) {i=i+1; plot dir.'/dinamica.txt' u 1:2:($1*major/$1):($1*minor/$1):($6*180/3.141593):(($6*180/3.141593)-180*floor($6/3.141593)) every ::(i-1)*ARG1::i*ARG1-1 w ellipses lc palette t sprintf("%.3f\%",i*100.0/N); pause mouse key; if(MOUSE_KEY == 97 ) {i=i-2}}

#,dir.'/dinamica.txt' u ($1-xf($6)):($2-yf($6)):(2*xf($6)):(2*yf($6)):4 every ::(i-1)*ARG1::i*ARG1-1 with vectors head size 1,20,60 filled lc rgb "black"
pause -1
