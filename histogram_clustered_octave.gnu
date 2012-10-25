set terminal postscript landscape color enhanced
set output "histogram_clustered_octave.ps"

unset key
unset label
set key autotitle columnheader
set xrange [0:50]
set xlabel "xvector"
set ylabel "Density"
set title "Clustered Histograms using Octave"
set style data histogram
set boxwidth 1.50
set style histogram cluster gap 1
set style fill solid border -1


plot 'myhistogramdata_octave.dat' using 2:xtic(1) title columnheader, for [i=3:4] '' using i title columnheader, for [i=14:16] '' using i title columnheader
unset output
set terminal x11 enhanced
replot

