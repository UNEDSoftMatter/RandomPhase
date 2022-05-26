unset xlabel
unset ylabel
unset xtics
unset ytics
set size square

set key autotitle columnhead
unset key
stats dir.'/voronoi_diagram.txt' nooutput
L=ARG1
set xrange [0:L*1.2]
set yrange [0:L*1.2]

N = STATS_max_x

set style fill solid 0.8

set key at L*(-0.05),L*(-0.05)
#set palette defined ( 0 "black", 1 "grey", 2 "black" )
set palette defined ( 0 "black", 1 "red", 2 "blue", 3 "green", 4 "black" )


set terminal wxt size 950,650 enhanced font 'Verdana,10'
#unset colorbox

#set multiplot

#set size 0.5,0.5
#set origin 0.0,0.0
#set title "Bond Orientation"
#set cbrange [-30:30]
#set palette defined ( 0 "black", 1 "red", 2 "blue", 3 "green", 4 "black" )
#plot dir.'/voronoi_diagram.txt' u ($1 == 1 ? $4 :1/0):5:($8/6.0)  w filledcurves lc palette t "",dir.'voronoi_diagram.txt' u ($1 == 1 ? $4 :1/0):5 w l lc rgb "white" t sprintf("%.3f\%",100.0/N)

#set size 0.5,0.5
#set origin 0.5,0.0
#set title "Particle Orientation"
#set cbrange [0:360]
#set palette defined ( 0 "black", 1 "red", 2 "blue", 3 "green", 4 "black" )
#plot dir.'/voronoi_diagram.txt' u ($1 == 1 ? $4 :1/0):5:($6*180.0/pi)  w filledcurves lc palette t "",dir.'voronoi_diagram.txt' u ($1 == 1 ? $4 :1/0):5 w l lc rgb "white" t ""

#set size 0.5,0.5
#set origin 0.5,0.5
#set title "Bond Orientation Modulus"
#set cbrange [0:1]
#set palette defined (0 "white", 1 "black")
#plot dir.'/voronoi_diagram.txt' u ($1 == 1 ? $4 :1/0):5:7  w filledcurves lc palette t "",dir.'voronoi_diagram.txt' u ($1 == 1 ? $4 :1/0):5 w l lc rgb "white" t ""

#set size 0.5,0.5
#set origin 0.0,0.5
#set title "Defects"
#set cbrange [0:4]
#set palette defined (0 "blue", 1 "green", 2 "red", 3 "orange", 4 "black")
#plot dir.'/voronoi_diagram.txt' u ($1 == 1 ? $4 :1/0):5:10  w filledcurves lc palette t "",dir.'voronoi_diagram.txt' u ($1 == 1 ? $4 :1/0):5 w l lc rgb "white" t ""

#unset multiplot; pause mouse key

i=int(ARG2)


while (i<=N) {i=i+1; set multiplot layout 1,2 title sprintf("%.3f\%",i*100.0/N);

set size 0.5,0.5
set origin 0.0,0.0
set title "Bond Orientation"
set cbrange [-30:30]
set palette defined ( 0 "black", 1 "red", 2 "blue", 3 "green", 4 "black" )
plot dir.'/voronoi_diagram.txt' u ($1 == i ? $4 :1/0):5:($8/6.0)  w filledcurves lc palette t sprintf("%.3f\%",i*100.0/N);

set size 0.5,0.5
set origin 0.5,0.0
set title "Particle Orientation"
set cbrange [0:360]
set palette defined ( 0 "black", 1 "red", 2 "blue", 3 "green", 4 "black" )
plot dir.'/voronoi_diagram.txt' u ($1 == i ? $4 :1/0):5:($6*180.0/pi)  w filledcurves lc palette t "";

set size 0.5,0.5
set origin 0.5,0.5
set title "Bond Orientation Modulus"
set cbrange [0:1]
set palette defined (0 "yellow", 1 "blue")
plot dir.'/voronoi_diagram.txt' u ($1 == i ? $4 :1/0):5:7  w filledcurves lc palette t ""; 

set size 0.5,0.5
set origin 0.0,0.5
set title "Defects"
set cbrange [0:4]
set palette defined (0 "blue", 1 "green", 2 "red", 3 "orange", 4 "black")
plot dir.'/voronoi_diagram.txt' u ($1 == i ? $4 :1/0):5:10  w filledcurves lc palette t "";


unset multiplot; pause mouse key; if (MOUSE_KEY == 97) {i=i-2} } 



