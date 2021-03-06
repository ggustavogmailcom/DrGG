#Para ver en pantalla
#reset
#set terminal X11

#Para exportar como latex
set terminal tikz gparrows tikzarrows
set output "FcOH-Simulacion-deltaE.tikz" 

#Saco la leyenda
#unset key
set key top right Left reverse sample 1.7 font ",12" textcolor rgb "gray20" 

#Saco el Borde
	unset border

#Saco las marcas
  	unset tics
#Defino estilos paset style line 2ra cada tipo de linea
	# set style line 1 lc rgb '#E5BC00' pt 1 ps 2 lw 2
	# set style line 2 lc rgb '#DE9C05' pt 1 ps 2 lw 2
	# set style line 3 lc rgb '#D87D0B' pt 1 ps 2 lw 2
	# set style line 4 lc rgb '#D25E10' pt 1 ps 2 lw 2
	# set style line 5 lc rgb '#CB3E16' pt 1 ps 2 lw 2
	# set style line 6 lc rgb '#C51F1B' pt 1 ps 2 lw 2
	# set style line 7 lc rgb '#BF0012' pt 1 ps 2 lw 2
	# set style increment user
	 set style line 1 lc rgb 'yellow' pt 1 ps 2 lw 2 
	 set style line 2 lc rgb 'orange' pt 1 ps 2 lw 2
	 set style line 3 lc rgb 'red' pt 1 ps 2 lw 2
	 set style line 4 lc rgb 'brown' pt 1 ps 2 lw 2
	 set style line 5 lc rgb 'gray10' pt 1 ps 2 lw 2
	 set style line 9 lc rgb 'gray10' pt 1 ps 2 dashtype 3 lw 2.5
	 set style increment user


#Estilos de los ejes 
	set style line 10 lc rgb 'gray20' lt 1 lw 5 
	set border 3 back ls 10 lw 1.5 
	set tics nomirror

#Estilo de la grilla
	set style line 11 lc rgb 'gray50' lt 0 lw 1 
	set grid back ls 11


#Graduacion del eje y e Intervalos entre las marcas mayores
	#set ytics 10 
	#set mytics 2 

#Coloca los nombre de los ejes
	set xlabel "$\\text{Potencial\\; vs\\; ECS/mV}$" font ",14" textcolor rgb "gray20" offset  0,-2
	set ylabel "$\\text{j}/ \\mu \\text{A.cm}^{-2}$"	   font ",14" textcolor rgb "gray20" offset -2,0

#Fuerza a establecer un rango
	 
	set xrange [-600:400]
	set yrange [-800:1000]


#Leyendas
# set label 100 sprintf("$\\Delta E = 0.2$") at -200,400 font ",8" textcolor rgb "black"
# set label 101 sprintf("$\\Delta E = 0.2$") at -150,405 font ",8" textcolor rgb "black"
# set label 102 sprintf("$\\Delta E = 0.2$") at -100,410 font ",8" textcolor rgb "black"
# set label 103 sprintf("$\\Delta E = 0.2$") at -80,420 font ",8" textcolor rgb "black"
# set label 104 sprintf("$\\Delta E = 0.2$") at 405,20 font ",8" textcolor rgb "black"
# set label 105 sprintf("$\\Delta E = 0.2$") at 405,20 font ",8" textcolor rgb "black"
# set label 106 sprintf("$\\Delta E = 0.2$") at 405,20 font ",8" textcolor rgb "black"
# set label 107 sprintf("$\\Delta E = 0.2$") at 405,20 font ",8" textcolor rgb "black"
# set label 108 sprintf("$\\Delta E = 0.2$") at 405,20 font ",8" textcolor rgb "black"
# set label 109 sprintf("$\\Delta E = 0.2$") at 405,20 font ",8" textcolor rgb "black"
# set label 110 sprintf("$\\Delta E = 0.2$") at 405,20 font ",8" textcolor rgb "black"


#plot "fc-10mM-F127-AuCNEA-Calcinado/1-FeOH-1mM-20.DTA" u ($3*1000):($4/0.0314*1e6) every ::1::655 with lines title columnheader,\
#"fc-10mM-F127-AuCNEA-Calcinado/2-FeOH-1mM-50.DTA" u ($3*1000):($4/0.0314*1e6) every ::1::655 with lines title columnheader,\

#Ploteo todas las funciones que les digamos
set label 1000 sprintf("ARu") at -350,500 font ",14" textcolor rgb "black"
set label 1001 sprintf("FcOH") at 10,-350 font ",14" textcolor rgb "black" 
set label 1002 sprintf("$\\Delta E$") at -140,870 font ",14" textcolor rgb "black"

set style line 100  lc rgbcolor 'black' lw 1.5
set arrow 10 from -190,820 to 10,820 heads filled size screen 0.015,18 ls 100
set arrow 11 from -136,835 to -136,945 head lc "black"


plot "FcOH-Simulacion-deltaE.txt" u ($1*1000-100):($2*24) with lines ls 9 title "$\\Delta E =$ \\SI{0}{\\milli\\volt}",\
"FcOH-Simulacion-deltaE.txt" u ($1*1000-100):($3*24) with lines ls 1 title "$\\Delta E =$\\SI{100}{\\milli\\volt}",\
"FcOH-Simulacion-deltaE.txt" u ($1*1000-100):($4*24) with lines ls 2 title "$\\Delta E =$\\SI{200}{\\milli\\volt}",\
"FcOH-Simulacion-deltaE.txt" u ($1*1000-100):($5*24) with lines ls 3 title "$\\Delta E =$\\SI{300}{\\milli\\volt}",\
"FcOH-Simulacion-deltaE.txt" u ($1*1000-100):($6*24) with lines ls 4 title "$\\Delta E =$\\SI{400}{\\milli\\volt}",\
"FcOH-Simulacion-deltaE.txt" u ($1*1000-100):($7*24) with lines ls 5 title "$\\Delta E =$\\SI{500}{\\milli\\volt}"