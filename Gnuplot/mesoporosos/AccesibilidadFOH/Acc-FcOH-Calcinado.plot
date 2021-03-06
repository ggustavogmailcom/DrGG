#Para ver en pantalla
#reset
#set terminal X11

#Para exportar como latex
set terminal tikz
set output "Acc-FcOH-Calcinado.tikz" 

#Saco la leyenda
#set key bottom right Left reverse samplen 3 font ",10" textcolor rgb "gray20" at 370,-700
set key top left Left reverse samplen -1 font ",14" textcolor rgb "black" at -100,130


#Saco el Borde
	unset border

#Saco las marcas
  	unset tics
#Defino estilos paset style line 2ra cada tipo de linea
	set style line 1 lc rgb 'red' pt 1 ps 2 lw 2
	set style line 2 lc rgb '#DE9C05' pt 1 ps 2 lw 2
	set style line 3 lc rgb '#D87D0B' pt 1 ps 2 lw 2
	set style line 4 lc rgb '#D25E10' pt 1 ps 2 lw 2
	set style line 5 lc rgb '#CB3E16' pt 1 ps 2 lw 2
	set style line 6 lc rgb '#C51F1B' pt 1 ps 2 lw 2
	set style line 7 lc rgb '#BF0012' pt 1 ps 2 lw 2
	set style line 8 lc rgb 'black' lt 1 lw 2 #Violeta
	set style increment user

#Estilos de los ejes 
	set style line 10 lc rgb 'gray20' lt 1 lw 5 
	set border 3 back ls 10 lw 1.5 
	set tics nomirror  font ",16" textcolor rgb 'gray20'
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
	 
	set xrange [-100:400]
	#set yrange [-100:100]

#plot "fc-10mM-F127-AuCNEA-Calcinado/1-FeOH-1mM-20.DTA" u ($3*1000):($4/0.0314*1e6) every ::1::655 with lines title columnheader,\
#"fc-10mM-F127-AuCNEA-Calcinado/2-FeOH-1mM-50.DTA" u ($3*1000):($4/0.0314*1e6) every ::1::655 with lines title columnheader,\

#Ploteo todas las funciones que les digamos
#FILES = system("ls -1 fc-1mM-F127-AuCNEA-Calcinado/*.txt")
FILES = system("ls -1 fc-1mM-F127-AuCNEA-Calcinado/2-FeOH-1mM-50.DTA.txt")

plot for [data in FILES] data u ($3*1000):($4/0.0314*1e6) every ::1::655 with lines title "CalSF" ls 8 
