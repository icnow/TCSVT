reset
load '../style_small.gnu'
set terminal postscript eps color enhanced  "Helvetica" 28
set size 1, 0.8

set output 'cdf_top.eps'

set xlabel 'Portion of Pageviews (%)'
set ylabel 'CDF of Users (%)'
#set log x

#set grid
set yrange [0:100]
set ytics 0, 20, 100
set mytics 2

set xrange [0:100]
#set xtics 0.4
#set xrange [0.1:100]
set key top left

plot 	"cdf_top1.txt" u ($1*100):($2*100) with l ls 1 title 'Top 1 Category',\
	"cdf_top2.txt" u ($1*100):($2*100) with l ls 3 title 'Top 2 Category'

exit