gnuplot                       Enter the gnuplot interpreter

hdd.dat:

   # Gb  IDE    SATA          # comment lines are ignored
    80  84.00  76.00
   120  90.00  88.00
   160 104.00 114.00
   250 136.00 134.00
   320   -    208.00          # An illegal character seemed to do the trick

gnuplot> plot "hdd.dat" using 1:2 title "IDE" with lines, "" using 1:3 title "SATA" with lines 
gnuplot> set xlabel "Capacity (Gb)"
gnuplot> set ylabel "Price ($)"
                              using 1:2      1st and 2nd columns of data
                              title "IDE"    Key for this data-set
                              with lines     Otherwise we get a scatter-graph

rainfall.dat:

   # Month  Rainfall  Days
      Jan     37.8     7
      Feb     36.8     6
      Mar     23.9     6
      Apr     52.2     8
      May     73.8     11
      Jun     47.0     7
      Jul     52.8     10
      Aug     79.3     11
      Sep     59.8     8
      Oct     116.4    8
      Nov     99.1     9
      Dec     100.8    9

gnuplot> set style data histograms
gnuplot> set style fill solid 1.0 border -1
gnuplot> plot "rainfall.dat" using 2:xticlabels(1) title "Monthly rainfall"
gnuplot> plot "rainfall.dat" using 2:xticlabels(1) title "Monthly rainfall", "" using 3 axes x1y2 title "Days of rain"
                              xticlabels(1)     Uses columns 1 for x tic-labels
                              axes x1y2         Puts this data-set onto the secondary Y-axis
gnuplot> set ylabel "Millimetres" 
gnuplot> set y2label "Days" 
gnuplot> set y2range [0:50]
gnuplot> set y2tics
                              Secondary-axis tic-labels are off by default

gnuplot> set term svg
gnuplot> set output "file.svg"
                              But Firefox didn't like the svg, regrettably

gnuplot> set logscale x
gnuplot> set autoscale
gnuplot> set key off          Don't display data-set keys
