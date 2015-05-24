reset
load '../style_small.gnu'
set terminal postscript eps color enhanced  "Helvetica" 28
set size 1, 0.8

set output 'dynamic_by_day.eps'

set xlabel 'Date'
set ylabel '# of Users'

set xrange [0:80]
set xtics ('Oct' 1, 'Nov' 18, 'Dec' 48)
set yrange [0:1000]

#set log y

set key bottom right

plot 'dynamic_by_day.txt' u 2 with l ls 1 notitle

exit