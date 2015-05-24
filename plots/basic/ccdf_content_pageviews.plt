reset
load '../style_small.gnu'
set terminal postscript eps color enhanced  "Helvetica" 28
set size 1, 0.8

set output 'ccdf_content_pageviews.eps'

set xlabel '# of Pageviews'
set ylabel 'CCDF of Contents (%)'
set log x
set log y

#set grid
set yrange [0.01:100]
#set ytics 0, 20, 100
#set mytics 2
set xrange [1:50000]
set ytics ('10^2'100, '10^1' 10, '10^0' 1, '10^-^1' 0.1, '10^-^2' 0.01, '10^-^3' 0.001, '10^-^4' 0.0001, '10^-^5' 0.00001, '10^-^6' 0.000001, '10^-^7' 0.0000001)

#set xrange [0.1:100]
set key bottom right

plot 	"ccdf_content_pageviews.txt" u 1:($2*100) with l ls 1 notitle

exit