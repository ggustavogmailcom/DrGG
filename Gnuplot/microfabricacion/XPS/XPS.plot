#Para ver en pantalla
reset
#set terminal aqua
#set terminal x11
#set terminal aqua

#Para exportar como latex
set terminal tikz gparrows tikzarrows
set output "XPS.tikz" 

#Para plotear archivos CSV
set datafile separator ","

#Saco la leyenda
unset key

#Pongo la leyenda
#set key top Left right reverse samplen 3 font ",10" textcolor rgb "gray20"
#set key spacing 1.7
#Saco el Borde
unset border

#Defino estilos para cada tipo de linea
set style line 1 lc rgb 'orange' lt 1 lw 1.2 pt 7 ps 1 #Marron
set style line 2 lc rgb 'red' lt 1 lw 1.2 pt 7 ps 1 #Naranja
set style line 3 lc rgb 'brown' lt 1 lw 1.2 pt 7 ps 1 #Naranja
set style line 4 lc rgb 'olive' lt 1 lw 1.2 pt 7 ps 1 #Naranja

set style line 20 lc rgb 'gray10' lw 1 #Gris muy oscuro
set style line 10 lc rgb 'gray20' lt 1 lw 5 

#Estilos de los ejes 
set style line 10 lc rgb 'gray20' lt 1 lw 5 
set border 3 back ls 10 lw 1.5 
set xtics nomirror
set ytics nomirror
unset mxtics

# #Rectangulo, ventana de trabajo
#set style rect front fs empty border lt 456 lc rgb 'black'
set object 2 rect from -615,15  to -556.5,65 fs empty border lc rgb 'black'  dt 3 lw 1.5
# set style rect fc lt -1 fs empty border lc 'black'

#Rango invertido para el IR
set xrange [-900:5]
set yrange [:70]
#Saco los y
set format y ""

#Estilo de la grilla
set style line 11 lc rgb 'gray50' lt 0 lw 1 
set grid back ls 11

#Coloca los nombre de los ejes
set xlabel "Energ\'ia / eV" font ",14" textcolor rgb "gray20" offset  0,-2
set ylabel "Intensidad / u. a." font ",14" textcolor rgb "gray20" offset  -2,0

set label at -900,65 "Cr\\textbar Au 400$^{\\circ}$C" textcolor rgb "black"
set label at -900,35 "Cr\\textbar Au 25$^{\\circ}$C" textcolor rgb "black"

#hago que sea mas largo en el eje X
set size ratio 0.6

#set obj 9 rect from 3020,-0.07 to 2788,0.21

#Etiquetas de los pico

# set style arrow 3 head filled size screen 0.015,10,65 ls 20

set label "Au5d" at -5,25 rotate by 90 font ",8" textcolor rgb "black"
set label "Au5p3" at -56,25 rotate by 90 font ",8" textcolor rgb "black"
set label "Au4f" at -87,51 rotate by 90 font ",8" textcolor rgb "black"
set label "Au4d5" at -330,49 rotate by 90 font ",8" textcolor rgb "black"
set label "Au4d3" at -357,49 rotate by 90 font ",8" textcolor rgb "black"
set label "Au4p3" at -542,48 rotate by 90 font ",8" textcolor rgb "black"
set label "Au4p1" at -643,51 rotate by 90 font ",8" textcolor rgb "black"
set label "Au4s" at -762,50 rotate by 90 font ",8" textcolor rgb "black"

set label "C1s" at -285,37 rotate by 90 font ",8" textcolor rgb "black"
set label "O1s" at -522,49rotate by 90 font ",8" textcolor rgb "black"

set label "Cr2p1" at -572,49 rotate by 90 font ",8" textcolor rgb "black"
set label "Cr2p3" at -593,49 rotate by 90 font ",8" textcolor rgb "black"

# set label "\\tiny{TO}$_2$" at 900,0.03 font ",8" textcolor rgb "gray20"
# set label "$\\nu_{\\text{\\tiny{Si-OH}}}$" at 1010,0.08 font ",10" textcolor rgb "gray20"
# set label "\\tiny{TO}$_3$" at 1180,0.48 font ",8" textcolor rgb "gray20"
# set label "\\tiny{CO}$_2$" at 2450,0.17 font ",8" textcolor rgb "gray20"
# set label "\\tiny{CO}$_2$" at 2450,0.02 font ",8" textcolor rgb "gray20"
# set label "\\tiny{H$_2$O adsorbida}" at 1900,0.05 font ",8" textcolor rgb "gray20"

#set arrow from 950,0.055 to 950,0.011 as 3

#set arrow from 800,-0.06 to 800,0.28 as 3
#set arrow from 955,-0.06 to 955,0.31 as 3
#set arrow from 2923,-0.06 to 2923,0.26 as 3
#set arrow from 1067,-0.06 to 1067,0.40 as 3

#set object 2 rect from 1350,0.162 to 980,0.24 lw 1 fs empty border lt -1

#Ploteo todas las funciones que les digamos
plot "Si-CrAu-400.csv" using 1:2 with lines ls 2 title "Cr\\textbar Au 400$^{\\circ}$C", \
"Si-CrAu-AsSputt.csv" using 1:2 with lines ls 3 title "Cr\\textbar Au 25$^{\\circ}$C", \

# # Now we set the options for the smaller plot
#   set size 0.6,0.4
#   set origin 0,0.55
#   set object 1 rectangle from graph 0,0 to graph 1,1 behind fc rgb "white"
#   #set object 1 rectangle from screen 0.2,0.6 to screen 0.5,0.9 fillcolor rgb "green"
#   set title 'detalle de la zona recuadrada' font ",8" textcolor rgb "gray20"
#   set xrange [1300:1000]
#   set xtics 100
#   set yrange [0.49:0.56]
#   set border 15
#   unset grid
#   set xlabel ""
#   set xtics font ", 6"
#   set ylabel ""
#   unset ytics
#   unset label
#   unset arrow
#   unset key
#   set label "\\tiny{LO}$_3$" at 1280,0.55 font ",8" textcolor rgb "gray20"
#   set label "\\tiny{LO}$_4$" at 1210,0.525 font ",8" textcolor rgb "gray20"


# # And finally let's plot the same set of data, but in the smaller plot
# #Ploteo todas las funciones que les digamos
# plot "SiO2-denso.csv" using 1:2 with lines ls 3 
# #set label "LO$_4$" at 2500,0.3 font ",8" textcolor rgb "gray20"
# #set label "LO$_3$" at 1300,0.19 font ",8" textcolor rgb "gray20"

# unset multiplot