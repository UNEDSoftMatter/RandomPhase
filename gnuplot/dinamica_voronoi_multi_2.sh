

# Usage message
if [ $# -eq 0 ]
then
  echo "Usage: $0 <directory data>";
exit 1;
fi

DIR=$1
echo "$s"

i=0
if [ $# -eq 2 ]
then
 i=$2
fi



L=`cat $DIR"calc_resume.txt" | grep "Box Size:" | cut -f 2 -d ":"`

gnuplot -e "dir='$DIR'" -c dinamica_voronoi_multi_2.gnuplot $L $i
