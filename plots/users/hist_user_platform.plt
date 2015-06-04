reset

load '../style_small.gnu'

set xrange [-0.5:5.5]
set yrange [0:30]
#set logscale y
set ylabel "PDF of Users (%)"
set xlabel "# of Visited Platforms"
bw=0.8
set xtics ("1" 0.1,"2" 1.1, "3" 2.1,"4" 3.1, "5" 4.1, "6" 5.1)
set key left top
set output "hist_user_platform.eps"
set style data histogram
set style fill pattern 1 border -1
#set style histogram rowstacked
set boxwidth bw
plot 'hist_user_platform.txt' using (100*$2) notitle lc 0

exit