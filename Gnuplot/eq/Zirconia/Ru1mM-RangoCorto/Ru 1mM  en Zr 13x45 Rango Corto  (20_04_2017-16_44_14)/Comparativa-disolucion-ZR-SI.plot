#Para ver en pantalla
#reset
#set terminal X11
#Para exportar como latex
set terminal tikz
set output "Comparativa-disolucion-ZR-SI.tikz" 

#Saco la leyenda
	unset key

#Saco el Borde
	unset border

#Saco las marcas
  	unset tics
  	set ytics 0.5

#Defino estilos para cada tipo de linea
set style line 1 lc rgb 'black' pt 7 ps 0.3 #Cuadrado
set style line 2 lc rgb '#006400' pt 7 ps 0.3 #Cuadrado
set style line 3 lc rgb 'red' pt 7 ps 1 lw 1  #Circulo
set style line 4 lc rgb 'red' lw 2 pt 7 ps 9 #Triangulo 
set style line 5 lc rgb 'red' lt -1 pt -1


#Estilos de los ejes 
	set style line 10 lc rgb 'gray20' lt 1 lw 5 
	set border 3 back ls 10 lw 1.5 
	set tics nomirror

#Estilo de la grilla
	set style line 111 lc rgb 'gray20' lt 0 lw 1 
	set grid back ls 111

#Coloca los nombre de los ejes
	set xlabel "N\'umero de ciclos"  font ",14" textcolor rgb "gray20" offset  0,-2
	set ylabel "$\\text{i}_p/\\text{i}_p^{\\text{Au}}$"	font ",14" textcolor rgb "gray20" offset -2,0

#LEyenda
 set label at 115,2.2 "PDM Zr/Si" font ",10" textcolor rgb "black" front
 set label at 115,1.3 "PDM Si" font ",10" textcolor rgb '#006400' front

#Fuerza a establecer un rango
	 
	#set xrange [-500:0]
	set yrange [0:2.5]


#Para graficar todas
	f(X)=1

 # set print "Zr-Ru1mM-IvsCiclos.txt" 
 #      do for [i=1:1170:2] {
 #       stats [-400:-100]  "MAXIMOS-TODOS.txt" u i:(column(i+1)) nooutput ; 
 #        print (i-1)/2+1, STATS_pos_max_y, STATS_pos_min_y, STATS_min_y, STATS_max_y
 #      } 
 #      set print


#plot for [i=1:90:2] "Ru 1mM  en Zr 13x45 Rango Corto  (20_04_2017-16_44_14)/primero.txt" using i:(column(i+1)/0.0314) w l ls 2,\

plot f(x) w l ls 3,\
"../Zr-Ru1mM-IvsCiclos.txt" u 1:($5/6.05) w p ls 1 ,\
"Ru1mM-secuencia-continua-hasta disolucion-ventana-trabajo.txt" using ($1):($3/4.01) with p ls 2

#plot for [i=89:93:2] "MAXIMOS-TODOS.txt" using i:(column(i+1)) w l ls 2,\


