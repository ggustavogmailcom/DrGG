	#Para ver en pantalla
#reset
#set terminal qt

#Para exportar como latex
set terminal tikz
set output "Calibracion_Fc.tikz"

#Saco la leyenda
	set key top left Left reverse samplen -2 font ",14" textcolor rgb "black"

#Saco el Borde
	unset border

#Saco las marcas
  	unset tics

#Defino estilos para cada tipo de linea
set style line 1 lc rgb 'black' pt 7 ps 1 lw 1#Cuadrado
set style line 2 lc rgb 'black' pt 9 ps 1.5  #Circulo
set style line 3 lc rgb 'red' lw 2 pt 7 ps 9 #Triangulo 
set style line 4 lt 0 lc rgb 'black'  lw 3

#Estilos de los ejes 
	set style line 10 lc rgb 'gray20' lt 1 lw 5 
	set border 3 back ls 10 lw 1.5 
	set tics nomirror font ",14"

#Estilo de la grilla
	set style line 11 lc rgb 'gray50' lt 0 lw 1 
	set grid back ls 11


#Graduacion del eje y e Intervalos entre las marcas mayores
	#set ytics 10 
	#set mytics 2 

#Pone el Titulo
	#set title "Grafico 1"

#Coloca los nombre de los ejes
	set xlabel "$\\text{Concentración/mM}$"	font ",14" textcolor rgb "gray20" offset  0,-2
	set ylabel "$\\text{j}/ \\mu \\text{A.cm}^{-2}$" font ",14" textcolor rgb "gray20" offset -2,0

#Fuerza a establecer un rango
	 
	set xrange [0:]
	set yrange [-1000:1000]
	set xtics offset 0,-0.2
set ytics offset 0.7,0

#Graduacion del eje x e Intervalos entre las marcas mayores
	#set xtics 10
	#set mxtics 2

#Graduacion del eje y e Intervalos entre las marcas mayores
	set ytics 250	
	#set mytics 2

#FITEO
	f(x) = a*x + b
	fit f(x) "Calibracion_Fc.txt" using ($1):($2) via a,b
	stat "Calibracion_Fc.txt" using 1:2

	set label 1 sprintf("y=%3.3f+%3.3f",a,b) at 0.2,435 font ",12" textcolor rgb "black"
	set label 2 sprintf("R=%3.4f",STATS_correlation) at 0.2,300 font ",12" textcolor rgb "black"

	g(x) = c*x + d
	fit g(x) "Calibracion_Fc.txt" using ($1):($3) via c,d
	stat "Calibracion_Fc.txt" using 1:3

	set label 3 sprintf("y=%3.3f+%3.3f",c,d) at 0.2,-325 font ",12" textcolor rgb "black"
	set label 4 sprintf("R=%3.4f",STATS_correlation) at 0.2,-455 font ",12" textcolor rgb "black"
 	

#Ploteo todas las funciones que les digamos

plot "Calibracion_Fc.txt" using ($1):($2) with points ls 1 title "corriente \'anodica",\
"Calibracion_Fc.txt" using ($1):($3) with  points ls 2 title "corriente cat\'odica",\
f(x) with lines ls 3 notitle,\
g(x) with lines ls 3 notitle
