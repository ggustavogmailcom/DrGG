#Para ver en pantalla
#reset
#set terminal x11

#Para exportar como latex
set terminal tikz 
set output "SF-accesibilidad.tikz" 

#Saco la leyenda
set key top left Left reverse samplen -1 font ",14" textcolor rgb "black" at -600,150

#Saco el Borde
	unset border

#Saco las marcas
  	unset tics

#Para colocar flechas de tal posicion a tal otra
  	#set arrow from 0,0 to 0,62
  	#set arrow from 0,0 to 85,0

red_000 = "#670106"
red_025 = "#8d0000"
red_050 = "#bf0000"
red_075 = "#e30101"
red_100 = "#ff0000"


#Defino estilos paset style line 2ra cada tipo de linea
	# set style line 1 lc rgbcolor red_000 pt 1 ps 2 lw 2
	# set style line 2 lc rgbcolor red_025 pt 1 ps 2 lw 2
	# set style line 3 lc rgbcolor red_050 pt 1 ps 2 lw 2
	# set style line 4 lc rgbcolor red_075 pt 1 ps 2 lw 2
	# set style line 5 lc rgbcolor red_100 pt 1 ps 2 lw 2
	# set style line 6 lc rgbcolor 'red' lt -1 pt -1
	set style line 1 lc rgb '#800000' lt 1 lw 1 #Marron
	set style line 2 lc rgb '#ff0000' lt 1 lw 1 #ROjo
	set style line 3 lc rgb '#ff4500' lt 1 lw 1 #Naranja
	set style line 4 lc rgb '#ffa500' lt 1 lw 2 #Amarillo
	set style line 5 lc rgb '#006400' lt 1 lw 2 #Verde
	set style line 6 lc rgb '#0000ff' lt 1 lw 2 #Azxul
	set style line 7 lc rgb '#9400d3' lt 1 lw 2 #Violeta
    set style line 8 lc rgb 'black' lt 1 lw 2 #Violeta

#Estilos de los ejes 
	set style line 10 lc rgb 'gray20' lt 1 lw 5 
	set border 3 back ls 10 lw 1.5 
	set tics nomirror font ",16" textcolor rgb 'gray20' offset 0,-0.3

#Estilo de la grilla
	set style line 11 lc rgb 'gray50' lt 0 lw 1 
	set grid back ls 11


#Graduacion del eje y e Intervalos entre las marcas mayores
	#set ytics 10 
	#set mytics 2 

#Pone el Titulo
	#set title "Grafico 1"


#Coloca los nombre de los ejes
	set xlabel "$\\text{Potencial\\; vs\\; ECS/}$mV" font ",18" textcolor rgb "gray20" offset  0,-2
	set ylabel "$\\text{j}/ \\mu \\text{A.cm}^{-2}$"	   font ",18" textcolor rgb "gray20" offset -3,0

#Fuerza a establecer un rango
	 
	set xrange [-600:100]
	set yrange [-400:200]

#Graduacion del eje x e Intervalos entre las marcas mayores
	#set xtics 200
	#set mxtics 2

#Graduacion del eje y e Intervalos entre las marcas mayores
	set ytics 100
	#set mytics 2

#FITEO
	#f(x) = a*x + b
	#fit f(x) "FIB_Au.txt" using 1:2 via a,b

	#stat "FIB_Au.txt" using 1:2

	#set label 1 sprintf("y=%3.3f",a) at 22,55 font "Times Italic,12" textcolor rgb "gray20"
	#set label 2 sprintf("+%3.3f",b) at 27,55 font "Times Italic,12" textcolor rgb "gray20"
	#set label 3 sprintf("R=%3.4f",STATS_correlation) at 22,52 font "Times Italic,12" textcolor rgb "gray20"
 

#Ploteo todas las funciones que les digamos

plot  "SF-accesibilidad-Ru1mM-calcinado.txt" u 3:($4/0.0314*0.90) every ::1::1400 w l ls 8 title "CalSF"
