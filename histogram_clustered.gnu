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
set style histogram cluster gap 3
set style fill solid border -1

plot 'myhistogramdata2.dat' using 2:xtic(1) title columnheader, for [i=15:16] '' using i title columnheader
unset output
set terminal x11 enhanced
replot

