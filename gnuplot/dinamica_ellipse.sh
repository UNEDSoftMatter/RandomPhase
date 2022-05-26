#!/bin/sh

# Usage message
if [ $# -eq 0 ]
then
  echo "Usage: $0 <directory data>";
exit 1;
fi

DIR=$1
echo "$s"
N=`cat $DIR"calc_resume.txt" | grep "Real Particle Number:" | cut -f 2 -d ":" | cut -f 1 -d "."`
major=`cat $DIR"calc_resume.txt" | grep "Sigma_Par:" | cut -f 2 -d ":"`
minor=`cat $DIR"calc_resume.txt" | grep "Sigma_Perp:" | cut -f 2 -d ":"`


gnuplot -e "dir='$DIR'" -c dinamica_ellipse.gnuplot $N $major $minor
