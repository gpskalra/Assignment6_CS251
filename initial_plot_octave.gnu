set terminal postscript landscape color enhanced
set output "initial_plot_octave.ps" 
     
unset key
unset label
set xrange [0:50]
set yrange [0:0.13]
set xlabel "x Vector"
set ylabel "Density"
set title "Probability Distributions using Octave"
set key right top
set label "np=15" at 16,0.1223468618353986
set label "{/Symbol m}=15" at 10,0.1231162606149145
set label "{/Symbol l}=15" at 15,0.1024358666645339

plot "initialdata_octave.dat" using 1:2 title 'Binomial'with linespoints,\
"initialdata_octave.dat" using 1:3 title 'Poission'with linespoints,\
"initialdata_octave.dat" using 1:4 title 'Gaussian'with linespoints
unset output
set terminal x11 enhanced
replot
