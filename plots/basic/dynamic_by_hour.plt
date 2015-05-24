reset
load '../style_small.gnu'
set terminal postscript eps color enhanced  "Helvetica" 28
set size 1, 0.8

set output 'dynamic_by_hour.eps'

set xlabel 'Hours in a day'
set ylabel '# of Users (K)'

set xrange [0:24]
#set xtics ('Oct' 1, 'Nov' 18, 'Dec' 48)
set yrange [0:300]

#set log y

set key bottom right

plot 'dynamic_by_hour.txt' u ($3/1000) with l ls 1 notitle

exit