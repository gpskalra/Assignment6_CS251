set terminal postscript landscape color enhanced
set output "my-plot.ps" 
     
unset key
unset label
set xrange [0:50]
set yrange [0:0.13]
set xlabel "x Vector"
set ylabel "Density"
set title "Probability Distributions"
set key right top
set label "np=15" at 16,0.122346861835402
set label "{/Symbol m}=15" at 10,0.123116260614915
set label "{/Symbol l}=15" at 15,0.102435866664534

plot "mydata.dat" using 1:2 title 'Binomial'with linespoints,\
"mydata.dat" using 1:3 title 'Poission'with linespoints,\
"mydata.dat" using 1:4 title 'Gaussian'with linespoints
unset output
set terminal x11 enhanced
replot
