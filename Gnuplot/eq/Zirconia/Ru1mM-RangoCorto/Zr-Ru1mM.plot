#Para ver en pantalla
#reset
#set terminal X11

#Para exportar como latex
set terminal tikz
set output "Zr-Ru1mM.tikz" 

#Saco la leyenda
	unset key

#Saco el Borde
	unset border

#Saco las marcas
  	unset tics
set style line 1 lc rgb 'gray70' lt 1 lw 0.5 #Marron
set style line 2 lc rgb 'red' lt 1 lw 2.5 #ROjo
set style line 3 lc rgb 'blue' lt 1 lw 2.5 #Azul

#Estilos de los ejes 
	set style line 10 lc rgb 'gray40' lt 1 lw 5 
	set border 3 back ls 10 lw 1.5 
	set tics nomirror

#Estilo de la grilla
	set style line 111 lc rgb 'gray40' lt 0 lw 1 
	set grid back ls 111

#Coloca los nombre de los ejes
	set xlabel "$\\text{Potencial\\; vs\\; ESC/mV}$" font ",14" textcolor rgb "gray40" offset  0,-2
	set ylabel "$\\text{j}/ \\mu \\text{A.cm}^{-2}$"	   font ",14" textcolor rgb "gray40" offset -2,0

#Fuerza a establecer un rango
	 
	set xrange [-500:0]
	#set yrange [10:60]


#Para graficar todas
filename(n) = sprintf("Ru 1mM  en Zr 13x45 Rango Corto  (20_04_2017-16_44_14)/Ru 1mM  en Zr 13x45 Rango Corto S0%d-2-VC.txt", n)
fileotro(m) = sprintf("Ru 1mM  en Zr 13x45 Rango Corto Over Nigth  (21_04_2017-08_59_26)/Ru 1mM  en Zr 13x45 Rango Corto Over Nigth S%d  2-VC    .txt", m)

plot for [i=1:2:1] filename(i) using 1:($2/0.0314) every 2 w l ls 1,\
for [i=2:2:1] filename(i) using 1:($2/0.0314) every 2::52600::54000 w l ls 3,\
"../Control_Au/Ru 1mM Au Rango Cort.txt" u 1:($2/0.0314) every ::4800::6000 w l ls 2,\
#"../../Rutenio-Silicio/Ru1mM-secuencia-continua-hasta-disolucion.txt" using 1:($2/0.0314) every 2 with lines ls 5,\
#"../../Rutenio-Silicio/Ru1mM-secuencia-continua-hasta-disolucion.txt" using 3:($4/0.0314) every ::1::1400 with lines ls 3,\
#"../../Rutenio-Silicio/Ru1mM-secuencia-continua-hasta-disolucion.txt" using 7:($8/0.0314) every ::63000::64400 with lines ls 2 ,\