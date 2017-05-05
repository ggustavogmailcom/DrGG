#Para ver en pantalla
#reset
#set terminal x11

#Para exportar como latex
set terminal tikz
set output "Ru10mM-ventana-preconcentracion.tikz"

#Saco la leyenda
	unset key

#Saco el Borde
	unset border

#Saco las marcas
  	unset tics
set style rect fc lt -1 fs solid 0.15 noborder
set obj rect from 30, graph 0 to 70, graph 1

set label at 45,0.2 "ventana de" font ",12" rotate by 90 textcolor rgb "gray20" front
set label at 55,0.2 "trabajo" font ",12" rotate by 90 textcolor rgb "gray20" front


#Defino estilos para cada tipo de linea
set style line 1 lc rgb 'black' pt 7 ps 1 lw 1#Cuadrado
set style line 2 lc rgb 'red' pt 7 ps 1  #Circulo
set style line 3 lc rgb 'red' lw 2 pt 7 ps 9 #Triangulo 
set style line 4 lc rgb 'red' lt -1 pt -1

#Estilos de los ejes 
set style line 10 lc rgb 'gray40' lt 1 lw 5 
set border 3 front ls 10 lw 1.5
set tics nomirror

#Estilo de la grilla
set style line 11 lc rgb 'gray40' lt 0 lw 1 
set grid front ls 11


#Graduacion del eje y e Intervalos entre las marcas mayores
	#set ytics 10 
	#set mytics 2 

#Pone el Titulo
	#set title "Grafico 1"

#Coloca los nombre de los ejes
	set xlabel "N\'umero de ciclos"  font ",14" textcolor rgb "gray40" offset  0,-2
	set ylabel "$\\text{I}_p^{np}/\\text{I}_p^{\\text{Au}}$"	font ",14" textcolor rgb "gray40" offset -2,0

#Fuerza a establecer un rango
	 
	set xrange [0:]
#	set yrange [-1000:1000]

#Graduacion del eje x e Intervalos entre las marcas mayores
	#set xtics 10
	#set mxtics 2

#Graduacion del eje y e Intervalos entre las marcas mayores
	#set ytics 250	
	#set mytics 2


#Ploteo todas las funciones que les digamos


plot "Ru10mM-ventana-preconcentracion.txt" using ($1):($2) with points ls 1, \
"Ru10mM-ventana-preconcentracion.txt" using ($3):($4) with lines ls 3
#"Calibracion_Fc.txt" using ($1):($3) with  points ls 1, f(x) with lines ls 4, g(x) with lines ls 4