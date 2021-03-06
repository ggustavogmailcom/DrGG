#Para ver en pantalla
#reset
#set terminal x11

#Para exportar como latex
set terminal tikz
set output "TEQ4-Ru10mM-3a1000mVs.tikz"

#Saco la leyenda
	unset key

#Saco el Borde
	unset border

#Saco las marcas
  	unset tics

#Lo saque de http://www.perbang.dk/rgbgradient/
set style line 1  lc rgb '#88f051' lt 1 lw 1 # --- Verde
set style line 3  lc rgb '#7ce75a' lt 1 lw 1 #      .
set style line 5  lc rgb '#71de63' lt 1 lw 1 #      .
set style line 7  lc rgb '#66d66c' lt 1 lw 1 #      .
set style line 9 lc rgb '#5acd75' lt 1 lw 1 #      .
set style line 11 lc rgb '#4fc47e' lt 1 lw 1 #      .
set style line 13  lc rgb '#44bc88' lt 1 lw 1 #      .
set style line 15  lc rgb '#38b391' lt 1 lw 1 #      .
set style line 17  lc rgb '#2daa9a' lt 1 lw 1 #      .
set style line 19 lc rgb '#1195b1' lt 1 lw 1 #      .
set style line 21 lc rgb '#058cba' lt 1 lw 1 # --- Azul



#Estilos de los ejes 
set style line 300 lc rgb 'gray20' lt 1 lw 5 
set border 3 back ls 300 lw 1.5 
set tics nomirror

#Estilo de la grilla
set style line 400 lc rgb 'gray20' lt 0 lw 1 
set grid back ls 400


#Graduacion del eje y e Intervalos entre las marcas mayores
	#set ytics 10 
	#set mytics 2 

#Pone el Titulo
	#set title "Grafico 1"

#Coloca los nombre de los ejes
	set xlabel "$\\text{Potencial\\; vs\\; ESC/mV}$" font ",14" textcolor rgb "gray20" offset  0,-2
	set ylabel "$\\text{j}/ \\mu \\text{A.cm}^{-2}$"	   font ",14" textcolor rgb "gray20" offset -2,0

#Fuerza a establecer un rango
	 
	set xrange [-600:100]
#	set yrange [-1000:1000]

#plot  using 1:($2/0.0314) w lines ls 5, \


#Para graficar todas
plot for [i=1:21:2] "TEQ4-Ru10mM-3a1000mVs.txt" using i:(column(i+1)/0.0314) w lines ls i
#plot for [i=1:1:2] "Ru10mM-Barrido-3a1000mVs.txt" u i:(column(i+1/0.0314)) w lines
