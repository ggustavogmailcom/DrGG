#Para ver en pantalla
#reset
#set terminal X11

#Para exportar como latex
set terminal tikz
set output "Zr-Ru1mM-181-246Ciclos.tikz" 

#Saco la leyenda
	set key top left Left reverse sample 2.3 font ",14" textcolor rgb "black" 


#Saco el Borde
	unset border

#Saco las marcas
  	unset tics
set style line 1 lc rgb 'gray80' lt 1 lw 0.5 #Marron
set style line 2 lc rgb 'black' lt 1 dashtype 2 lw 2.5
set style line 3 lc rgb 'black' lt 1 lw 2.5 #Azul


#Estilos de los ejes 
	set style line 10 lc rgb 'gray20' lt 1 lw 5 
	set border 3 back ls 10 lw 1.5 
set tics nomirror font ",16" textcolor rgb "gray20"
	set xtics offset 0,-0.5
#Estilo de la grilla
	set style line 111 lc rgb 'gray50' lt 0 lw 1 
	set grid back ls 111

#Coloca los nombre de los ejes
	set xlabel "$\\text{Potencial\\; vs\\; ECS/mV}$" font ",18" textcolor rgb "gray20" offset  0,-2
	set ylabel "$\\text{j}/ \\mu \\text{A.cm}^{-2}$"	   font ",18" textcolor rgb "gray20" offset -3,0

#Fuerza a establecer un rango
	 
	set xrange [-500:0]
	#set yrange [10:60]


#Para graficar todas
filename(n) = sprintf("Ru 1mM  en Zr 13x45 Rango Corto  (20_04_2017-16_44_14)/Ru 1mM  en Zr 13x45 Rango Corto S0%d-2-VC.txt", n)
fileotro(m) = sprintf("Ru 1mM  en Zr 13x45 Rango Corto Over Nigth  (21_04_2017-08_59_26)/Ru 1mM  en Zr 13x45 Rango Corto Over Nigth S%d  2-VC    .txt", m)

plot for [i=5:5:1] filename(i) using 1:($2/0.0314) every ::1400 w l ls 3 title "VacSZF",\
"../Control_Au/Ru 1mM Au Rango Cort.txt" u 1:($2/0.0314) every ::4800::6000 w l ls 2 title "Au",\
#"../../Rutenio-Silicio/Ru1mM-secuencia-continua-hasta-disolucion.txt" using 1:($2/0.0314) every 2 with lines ls 5,\
#"../../Rutenio-Silicio/Ru1mM-secuencia-continua-hasta-disolucion.txt" using 3:($4/0.0314) every ::1::1400 with lines ls 3,\
#"../../Rutenio-Silicio/Ru1mM-secuencia-continua-hasta-disolucion.txt" using 7:($8/0.0314) every ::63000::64400 with lines ls 2 ,\