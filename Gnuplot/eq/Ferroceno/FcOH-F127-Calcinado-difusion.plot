#Para ver en pantalla
#reset
#set terminal x11

#Para exportar como latex
set terminal tikz
set output "FcOH-F127-Calcinado-difusion.tikz"

#Leyenda
	set key top left Left reverse samplen -2 font ",14" textcolor rgb "black"

#Saco el Borde
	unset border

#Saco las marcas
  	unset tics
  	set xtics 0.4


#Defino estilos para cada tipo de linea
set style line 1 lc rgb 'black' pt 7 ps 1 lw 1#Cuadrado
set style line 2 lc rgb 'red' pt 9 ps 1.5  #Circulo
set style line 3 lc rgb 'red' lw 2 pt 7 ps 9 #Triangulo 
set style line 4 lt 0 lc rgb 'black'  lw 3

#Estilos de los ejes 
set style line 10 lc rgb 'gray40' lt 1 lw 5 
set border 3 front ls 10 lw 1.5
set tics nomirror

#Estilo de la grilla
set style line 11 lc rgb 'gray40' lt 0 lw 1 
set grid front ls 11

#Coloca los nombre de los ejes
	set xlabel "log(v) $[\\text{mV.s}^{-1}]$"  font ",14" textcolor rgb "gray40" offset  0,-2
	set ylabel "log(j) $[\\mu \\text{A.cm}^{-2}]$"	font ",14" textcolor rgb "gray40" offset -2,0

#Fuerza a establecer un rango
	 
	#set xrange [0:180]
#	set yrange [-1000:1000]
#FITEO
	 # f(x) = a*x + b
	 # fit f(x) "Barrido_Vel_Max_Min_F127-CNEA-Calcinado-Fc1mM.txt" using (log10($1)):(log10($3)) via a,b
	 # stat "Barrido_Vel_Max_Min_F127-CNEA-Calcinado-Fc1mM.txt" using (log10($1)):(log10($3))
	 # set label 1 sprintf("y=%3.3fX + %3.3f",a,b) at 2.6,2.8 font ",6" textcolor rgb "gray40"
	 # set label 2 sprintf("R=%3.4f",STATS_correlation) at 2.6,2.7 font ",6" textcolor rgb "gray40"

	 # g(x) = c*x + d
	 # fit g(x) "Barrido_Vel_Max_Min_F127-CNEA-Calcinado-Fc1mM.txt" using (log10($1)):(log10($5)) via c,d
	 # stat "Barrido_Vel_Max_Min_F127-CNEA-Calcinado-Fc1mM.txt" using (log10($1)):(log10($5))
	 # set label 5 sprintf("y=%3.3fX + %3.3f",c,d) at 2.6,2.3 font ",6" textcolor rgb "gray40"
	 # set label 6 sprintf("R=%3.4f",STATS_correlation) at 2.6,2.2 font ",6" textcolor rgb "gray40"	

	 # h(x) = e*x + f
	 # fit h(x) "Barrido-Ru1mM-Max-Min-GAMRY.txt" using (log10($1)):(log10($5)) every ::5::8 via e,f
	 # stat "Barrido-Ru1mM-Max-Min-GAMRY.txt" using (log10($1)):(log10($5))
	 # set label 3 sprintf("y=%3.3fX + %3.3f",e,f) at 4,1.57 font ",6" textcolor rgb "gray40"
	 # set label 4 sprintf("R=%3.4f",STATS_correlation) at 4,1.5 font ",6" textcolor rgb "gray40"	
 
	  z(x)=0.5*x+1.30
	  set label 101 sprintf("$\\measuredangle = 0,5$") at 2.42,2.45 font ",12" textcolor rgb "black"

#Grafico


plot "FcOH-F127-Calcinado-difusion.txt" using (log10($1)):(log10($3)) with points ls 1 title "corriente \'anodica",\
"FcOH-F127-Calcinado-difusion.txt" using (log10($1)):(log10($5)) with points ls 2 title "corriente cat\'odica",\
z(x) w l ls 4 notitle