reset
load '../style_small.gnu'
set terminal postscript eps color enhanced  "Helvetica" 28
set size 1, 0.8

set output 'cdf_entropy.eps'

set xlabel 'Entropy'
set ylabel 'CDF of Users (%)'
#set log x

#set grid
set yrange [0:100]
set ytics 0, 20, 100
set mytics 2

set xrange [0:1.6]
set xtics 0.4
#set xrange [0.1:100]
set key bottom right

plot 	"cdf_entropy.txt" u 1:($2*100) with l ls 1 notitle

exit