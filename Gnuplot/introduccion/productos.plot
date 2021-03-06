#Para ver en pantalla
#reset
#set terminal qt

#Para exportar como latex
#set terminal tikz tikzarrows
#set output "productos.tikz" 

#Leyenda
#set key at graph 0.95, 0.80 samplen 0.3 spacing 6
#set label 2 'Nanociencia' at graph 0.85, 0.78 left rotate by 90  font ",14"   textcolor rgb "gray20"
#set label 3 'Nanotecnología' at graph 0.93, 0.78 left rotate by 90  font ",14"  textcolor rgb "gray20"

#Saco el Borde
	unset border

#Saco las marcas
 # 	unset tics
 	unset mxtics
#Estilos de los ejes 
	set style line 10 lc rgb 'gray20' lt 1 lw 5 
	set border 15 back ls 10 lw 1.5 
	set tics nomirror

#Estilo de la grilla
	set style line 11 lc rgb 'gray50' lt 0 lw 1 
	set grid noxtics front ls 11
    set grid ytics back ls 11
#Coloca los nombre de los ejes
	#set y2label "N\'umero de publicaciones"  font ",14" textcolor rgb "gray20" offset 2,0

#Cambio de aspecto
#set size square 1,2.2
#set size ratio 1.8

#Leyenda

#Separados por comas
set datafile separator ","

#Aspecto barras
set style fill solid 0.6 border


#Histograma
set style data histograms
set style histogram cluster gap 5

#separacion


#Nombre de los paises rotados
#set xtics rotate by 90 font ",12" offset 0, 0.6, 0 right
#set y2tics rotate by 90 font ",12" offset 1,0,0 center format "%'gK"
#set format y ""
#set boxwidth 0.95 relative

#set label 100 at 8.8,0.6 "567" font ",8" rotate by 90
#set label 200 at 9.17,0.2 "294" font ",8" rotate by 90

#Grafico
plot 'productos.txt' using 2:xtic(1),\
'companias.txt' using 2:xtic(1),\
'paises.txt' using 2:xtic(1),\
