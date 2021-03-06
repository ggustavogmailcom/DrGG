#Para ver en pantalla
#reset
#set terminal X11

#Para exportar como latex
set terminal tikz gparrows tikzarrows
set output "FcOH-Simulacion-K1000DFcOH.tikz" 

#Saco la leyenda
set key top right Left at 525,480 reverse sample 2 font ",14" textcolor rgb "black"

#Saco el Borde
	unset border

#Saco las marcas
  	unset tics
#Defino estilos paset style line 2ra cada tipo de linea
	set style line 5 lc rgb '#E5BC00' pt 1 ps 2 lw 2
	set style line 2 lc rgb '#DE9C05' pt 1 ps 2 lw 2
	set style line 3 lc rgb '#D87D0B' pt 1 ps 2 lw 2
	set style line 4 lc rgb '#D25E10' pt 1 ps 2 lw 2
	set style line 1 lc rgb '#CB3E16' pt 1 ps 2 lw 2
	set style line 6 lc rgb '#C51F1B' pt 1 ps 2 lw 2
	set style line 7 lc rgb '#BF0012' pt 1 ps 2 lw 2
	set style increment user

#Estilo de las flechas
	set style line 100  lc rgbcolor 'black' lw 1.5
	set style arrow 200 head filled size screen 0.02,10 ls 100

#Estilos de los ejes 
	set style line 10 lc rgb 'gray20' lt 1 lw 5 
	set border 3 back ls 10 lw 1.5 
	set tics nomirror font ",16" textcolor rgb "gray20"
	set xtics offset 0,-0.5

#Estilo de la grilla
	set style line 11 lc rgb 'gray50' lt 0 lw 1 
	set grid back ls 11


#Graduacion del eje y e Intervalos entre las marcas mayores
	#set ytics 10 
	#set mytics 2 

#Coloca los nombre de los ejes
	set xlabel "$\\text{Potencial\\; vs\\; ECS/mV}$" font ",18" textcolor rgb "gray20" offset  0,-2
	set ylabel "$\\text{j}/ \\mu \\text{A.cm}^{-2}$"	   font ",18" textcolor rgb "gray20" offset -3.2,0

#Fuerza a establecer un rango
	 
	set xrange [-600:600]
	#set yrange [-100:100]

#Leyenda
	  set label 100 sprintf("ARu adsorbido") at -200,-490 font ",12" textcolor rgb "black" 
	  set label 101 sprintf("permeación FcOH") at 200,-230 font ",12" textcolor rgb "black" 
	  set label 102 sprintf("mediación FcOH") at 0,-350 font ",12" textcolor rgb "black"

#plot "fc-10mM-F127-AuCNEA-Calcinado/1-FeOH-1mM-20.DTA" u ($3*1000):($4/0.0314*1e6) every ::1::655 with lines title columnheader,\
#"fc-10mM-F127-AuCNEA-Calcinado/2-FeOH-1mM-50.DTA" u ($3*1000):($4/0.0314*1e6) every ::1::655 with lines title columnheader,\

#Ploteo todas las funciones que les digamos

plot "simulacion-K0-Dfc.txt" u ($1*1000):7 with lines ls 1 title "$D=$\\SI{e-6}{cm^{2}s^{-1}}",\
"simulacion-K0-Dfc.txt" u ($1*1000):8 with lines ls 3 title "$D=$\\SI{e-8}{cm^{2}s^{-1}}",\
"simulacion-K0-Dfc.txt" u ($1*1000):9 with lines ls 5 title "$D=$\\SI{e-10}{cm^{2}s^{-1}}",\
"Flechas-simulaciones.txt" u 1:2:3:4  w vectors arrowstyle 200 notitle, \
"Flechas-simulaciones.txt" u 5:6:7:8 w vectors arrowstyle 200 notitle, \
"Flechas-simulaciones.txt" u 9:10:11:12 w vectors arrowstyle 200 notitle, \