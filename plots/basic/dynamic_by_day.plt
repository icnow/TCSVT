reset
load '../style_small.gnu'
set terminal postscript eps color enhanced  "Helvetica" 28
set size 1, 0.8

set output 'dynamic_by_day.eps'

set xlabel 'Date'
set ylabel '# of Users/Contents/Pageviews'

set xrange [0:100]
set xtics ('Oct' 1, 'Nov')
set yrange [1:30000]

set log y

set key bottom right