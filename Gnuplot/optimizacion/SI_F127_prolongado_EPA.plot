#Para ver en pantalla
#reset
#set terminal qt

#Para exportar como latex
set terminal tikz
set output "SI_F127_prolongado_EPA.tikz" 

#Saco la leyenda
set key top left Left reverse samplen 3 font ",14" textcolor rgb "black"
#Saco el Borde
unset border

#Saco las marcas
unset tics

#Defino estilos para cada tipo de linea
set style line 1 lt -1 lw 2 pi -3 pt 6 ps 1.5 lc  rgb '#800000'
set style line 3 lt -1 lw 2 pi -5 pt 7 ps 1.5 lc  rgb '#ff4500'

#Estilos de los ejes 
set style line 10 lc rgb 'gray20' lt 1 lw 5 
set border 11 back ls 10 lw 1.5 
set tics nomirror font ",16" textcolor rgb 'gray20'
set y2tics 6
set y2range [0:42]
set xtics 0.2  offset 0,-0.3

#Estilo de la grilla
set style line 11 lc rgb 'gray50' lt 0 lw 1 
set grid back ls 11


#Coloca los nombre de los ejes
set xlabel "$\\text{P/P}_s$" font ",18" textcolor rgb "gray20" offset  0,-2
set ylabel "\'Indice de refracci\'on" font ",18" textcolor rgb "gray20" offset  -2.5,0
set y2label "\\% Volumen Poroso" font ",18" textcolor rgb "gray20" offset  2.5,0


#Ploteo todas las funciones que les digamos
plot "Si_130F127-EPA.txt" using 1:2 axes x1y1 with linespoints ls 1 title "Adsorci\'on", "Si_130F127-EPA.txt" using 5:6 with linespoints ls 3 title "Desorci\'on"
