set terminal postscript landscape color enhanced
set output "histograms.ps"

unset key
unset label
set key autotitle columnheader
set xrange [0:50]
set xlabel "xvector"
set ylabel "Density"
set title "Histograms data + original data"
set style data histogram
set style histogram rowstacked
set style fill solid border -1
set boxwidth 0.75
plot 'myhistogramdata2_R.dat' using 2:xtic(1) title columnheader, for [i=3:16] '' using i title columnheader
unset output
set terminal x11 enhanced
replot

