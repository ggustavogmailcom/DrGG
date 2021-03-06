#Para ver en pantalla
#reset
#set terminal qt

#Para exportar como latex
set terminal tikz tikzarrows
set output "histogramas-ciclo25.tikz" 
set key left Left reverse samplen 2 font ",14"   textcolor rgb "gray20"

#Leyenda

#Saco el Borde
	unset border

#Saco las marcas
 # 	unset tics
 	unset mxtics
 	set xtics scale 0  offset 0,-0.4
#Estilos de los ejes 
	set style line 10 lc rgb 'gray20' lt 1 lw 5 
	set border 15 back ls 10 lw 1.5 
	set tics nomirror font ",14"

#Estilo de la grilla
	set style line 11 lc rgb 'gray50' lt 0 lw 1 
	#unset grid
	set grid noxtics front ls 11
    set grid ytics back ls 11
#Coloca los nombre de los ejes
	set ylabel "$\\text{j}_p / \\text{j}^{\\text{Au}}_p$"  font ",16" textcolor rgb "gray20" offset -2,0
    set xlabel "Electrodo / ciclo 25"  font ",16" textcolor rgb "gray20" offset 0,-1.4

#Cambio de aspecto
#set size square 1,2.2
#set size ratio 1.8
#set yrange[0:600]
#Leyenda

#Aspecto barras
set style fill solid 0.65 border 

#Archivos CSV
set datafile separator ","

#Histograma
set style data histograms

#separacion
set style histogram gap 1
set xrange[-0.5:2.5]

#Nombre de los paises rotados
#set xtics font ",12" offset 0, 0.6, 0 right
#set ytics font ",12"
set boxwidth 0.95 relative


#set label 100 at 8.8,0.6 "567" font ",8" rotate by 90
#set label 200 at 9.17,0.2 "294" font ",8" rotate by 90

#Grafico
plot 'histogramas-ciclos25-50.txt' using ($2):xtic(1) lc 'gray20' title "FeCN", 'histogramas-ciclos25-50.txt' using ($4):xtic(1) lc 'orange' title "FcOH", 'histogramas-ciclos25-50.txt' using ($6):xtic(1) lc 'blue' fs pattern 1 title "ARu",







