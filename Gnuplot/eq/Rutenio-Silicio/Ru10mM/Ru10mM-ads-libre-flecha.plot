#Para ver en pantalla
#reset
#set terminal x11
#set terminal aqua

#Para exportar como latex
set terminal tikz gparrows tikzarrows
set output "Ru10mM-ads-libre-flecha.tikz"

#Saco la leyenda
set key top left Left reverse samplen -1 font ",14" textcolor rgb "black" at -525,1300 


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

#Flecha
set style line 100  lc rgbcolor 'black' lw 1.5
set style arrow 200 head filled size screen 0.02,10 ls 100

#Lo saque de http://www.perbang.dk/rgbgradient/
# set style line 1  lc rgb '#88f051' lt 1 lw 3 # --- Verde
# set style line 3  lc rgb '#82eb55' lt 1 lw 1 #      .
# set style line 5  lc rgb '#7ce75a' lt 1 lw 1 #      .
# set style line 7  lc rgb '#77e35e' lt 1 lw 1 #      .
# set style line 9  lc rgb '#71de63' lt 1 lw 1 #      .
# set style line 11  lc rgb '#6bda67' lt 1 lw 1 #      .
# set style line 13  lc rgb '#66d66c' lt 1 lw 1 #      .
# set style line 15  lc rgb '#60d171' lt 1 lw 1 #      .
# set style line 17 lc rgb '#5acd75' lt 1 lw 1 #      .
# set style line 19 lc rgb '#55c97a' lt 1 lw 1 #      .
# set style line 21 lc rgb '#4fc47e' lt 1 lw 1 #      .
# set style line 23  lc rgb '#49c083' lt 1 lw 1 #      .
# set style line 25  lc rgb '#44bc88' lt 1 lw 1 #      .
# set style line 27  lc rgb '#3eb78c' lt 1 lw 1 #      .
# set style line 29  lc rgb '#38b391' lt 1 lw 1 #      .
# set style line 31  lc rgb '#33af95' lt 1 lw 1 #      .
# set style line 33  lc rgb '#2daa9a' lt 1 lw 1 #      .
# set style line 35  lc rgb '#27a69e' lt 1 lw 1 #      .
# set style line 37 lc rgb '#22a2a3' lt 1 lw 1 #      .
# set style line 39 lc rgb '#1c9da8' lt 1 lw 1 #
# set style line 41 lc rgb '#1699ac' lt 1 lw 1 #      .
# set style line 43 lc rgb '#1195b1' lt 1 lw 1 #      .
# set style line 45 lc rgb '#0b90b5' lt 1 lw 1 # --- Azul
# set style line 47 lc rgb '#058cba' lt 1 lw 1 # --- Azul
# set style line 49 lc rgb '#0088bf' lt 1 lw 3 # --- Azul

#Verde Claro a verde Oscuro
set style line 3   lc rgb 'gray80' lt 1 lw 1 # --- Verde claro
set style line 9   lc rgb 'gray50' lt 1 lw 1 #      .
set style line 15   lc rgb 'gray60' lt 1 lw 1 #      .
set style line 21  lc rgb 'gray50' lt 1 lw 1 #      .
set style line 27  lc rgb 'gray20' lt 1 lw 1 #      .
set style line 33  lc rgb 'gray30' lt 1 lw 1 #      .
set style line 39  lc rgb 'gray20' lt 1 lw 1 #      .
set style line 49  lc rgb '#black' lt 1 lw 2 # --- vede Oscuro


#Estilos de los ejes 
set style line 300 lc rgb 'gray20' lt 1 lw 5 
set border 3 back ls 300 lw 1.5 
set tics nomirror  font ",14"

#Estilo de la grilla
set style line 400 lc rgb 'gray50' lt 0 lw 1 
set grid back ls 400


#Graduacion del eje y e Intervalos entre las marcas mayores
	#set ytics 10 
	#set mytics 2 

#Pone el Titulo
	#set title "Grafico 1"

#Coloca los nombre de los ejes
	set xlabel "$\\text{Potencial\\; vs\\; ECS/mV}$" font ",14" textcolor rgb "gray20" offset  0,-2
	set ylabel "$\\text{j}/ \\mu \\text{A.cm}^{-2}$"	   font ",14" textcolor rgb "gray20" offset -2,0

#Fuerza a establecer un rango
	 
	set xrange [-500:]
	set yrange [:1500]
	set xtics offset 0,-0.4

#Graduacion del eje x e Intervalos entre las marcas mayores
	#set xtics 10
	#set mxtics 2

#Graduacion del eje y e Intervalos entre las marcas mayores
	#set ytics 250	
	#set mytics 2


#Ploteo todas las funciones que les digamos

#Curva 1 --> Au desnudo
#Curva 3 --> Adsorbido
#Curva 27 --> desubicada 
#Curva 55 --> desubicada
#Texto
#set label 1 at  50, 250 '\hl{\small $t_\textrm{Nc}$}' center rotate by 45 front
# set label at -310,755 "t" font ",8" rotate by 62 textcolor rgb "gray20" front
# set label at -307,830 "i" font ",8" rotate by 50 textcolor rgb "gray20" front
# set label at -304,870 "e" font ",8" rotate by 45 textcolor rgb "gray20" front
# set label at -297,930 "m" font ",8" rotate by 41 textcolor rgb "gray20" front
# set label at -284,1020 "p" font ",8" rotate by 34 textcolor rgb "gray20" front
# set label at -275,1090 "o" font ",8" rotate by 16 textcolor rgb "gray20" front

set label at -500,180 "adsorbido" font ",14" textcolor rgb "black" front
set label at -300,980 "libre" font ",14"  textcolor rgb "black" front
set label at -175,1200 "+ciclos" font ",14"  textcolor rgb "black" front

#Para graficar todas
# plot for [i=7:25:2] 'Ru10mM.txt' using i:(column(i+1)/0.0314) w lines ls i-4, \
# for [i=29:51:2] 'Ru10mM.txt' using i:(column(i+1)/0.0314) w lines ls i-6, \
# 'Ru10mM.txt' u 5:($6/0.0314) with lines ls 1, \
# 'Ru10mM.txt' u 53:($54/0.0314) with lines ls 49,  "flecha.txt" u 1:2 smooth bezier ls 100, "flecha.txt" u 3:4:($5*3):($6*3) w vectors arrowstyle 200 #"flecha.txt" with points

 plot for [i=7:19:2] 'Ru10mM.txt' using i:(column(i+1)/0.0314) w lines ls i*3-18 notitle, \
 'Ru10mM.txt' u 21:($22/0.0314) with lines ls 49 title "SF", \
 "flecha2.txt" u 1:2:3:4  w vectors arrowstyle 200 notitle, \
 "flecha2.txt" u 5:6:7:8  w vectors arrowstyle 200 notitle, \
 "flecha2.txt" u 9:10:11:12  w vectors arrowstyle 200 notitle, \
 "flecha2.txt" u 13:14:15:16  w vectors arrowstyle 200 notitle, \



 #"flecha.txt" u 3:4:($5*3):($6*3) w vectors arrowstyle 200 #"flecha.txt" with points