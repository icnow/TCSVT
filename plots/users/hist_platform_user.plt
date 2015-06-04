reset

load '../style_small.gnu'

set xrange [-0.5:5.5]
set yrange [0:100]
#set logscale y
set ylabel "Portion of Users (%)"
set xlabel "Platforms"
bw=0.8
set xtics ("Youku" 0.1,"Iqiyi" 1.1, "Souhu" 2.1,"Tunder" 3.1, "Leshi" 4.1, "Tencent" 5.1)
set key left top
set output "hist_platform_user.eps"
set style data histogram
set style fill pattern 1 border -1
#set style histogram rowstacked
set boxwidth bw
plot 'hist_platform_user.txt' using (100*$2/3644) notitle lc 0

exit