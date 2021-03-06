#Para ver en pantalla
#reset
#set terminal X11

set size ratio 0.5

#Para exportar como latex
#set terminal tikz
#set output "Zr-numero-de-ciclo-001mM.tikz" 

#Saco la leyenda
	unset key

#Saco el Borde
	unset border

#Saco las marcas
  	unset tics
  	#set ytics 0.5
set style line 1 lc rgb 'gray50' lt 1 lw 0.5 #Marron
set style line 2 lc rgb 'red' lt 1 lw 2.5 #ROjo
set style line 3 lc rgb 'blue' lt 1 lw 2.5 #Azul
#Defino estilos para cada tipo de linea
set style line 1 lc rgb 'black' pt 7 ps 0.5 #Cuadrado
set style line 2 lc rgb 'red' pt 7 ps 1 lw 1  #Circulo
set style line 3 lc rgb 'red' lw 2 pt 7 ps 9 #Triangulo 
set style line 4 lc rgb 'red' lt -1 pt -1


#Estilos de los ejes 
	set style line 10 lc rgb 'gray20' lt 1 lw 5 
	set border 3 back ls 10 lw 1.5 
	set tics nomirror

#Estilo de la grilla
	set style line 111 lc rgb 'gray20' lt 0 lw 1 
	set grid back ls 111

#Coloca los nombre de los ejes
	set xlabel "N\'umero de ciclos"  font ",14" textcolor rgb "gray20" offset  0,-2
	set ylabel "$\\text{I}_p^{np}/\\text{I}_p^{\\text{Au}}$"	font ",14" textcolor rgb "gray20" offset -2,0

#Fuerza a establecer un rango
	 
	#set xrange [-500:0]
	#set yrange [10:60]


#Para graficar todas
	f(X)=1

  # set print "Zr-Ru001mM-IvsCiclos.txt" 
  #      do for [i=1:1170:2] {
  #       stats [-400:-100]  "Zr 6 Ru 0.01 mM 12x45 Rango Corto  (20_04_2017-09_36_04)/MAXIMOS-TODOS.txt" u i:(column(i+1)) nooutput ; 
  #        print (i-1)/2+1, STATS_pos_max_y, STATS_pos_min_y, STATS_min_y, STATS_max_y
  #      } 
  #      set print


#plot for [i=1:90:2] "Ru 1mM  en Zr 13x45 Rango Corto  (20_04_2017-16_44_14)/primero.txt" using i:(column(i+1)/0.0314) w l ls 2,\

plot "Zr-Ru001mM-IvsCiclos.txt" u 1:5

#[0:600] f(x) w l ls 2

#plot for [i=89:93:2] "MAXIMOS-TODOS.txt" using i:(column(i+1)) w l ls 2,\


