
#Nombre: Franco Najarro Mallqui 20081384c
#Respuesta 5: Este programa que dibuja una grafica para los valores de presion y temperatura dados , se explica a continuacion las instrucciones.




plot.new() # causa la finalización del trazado en el gráfico actual (si hay uno) y un avance a un nuevo marco de gráficos.También es útil para saltear tramas cuando se usa una región de varias figuras.
plot.window(range(pressure$temperature), # esta funcion plotea una grafica a partir de un data.frame , en este caso el data.frame es pressure
# el eje x de la grafica sera temperatura
range(pressure$pressure)) # el eje y de la grafica sera la presion
box() #Esta función dibuja un cuadro alrededor de la gráfica actual en el color y tipo de línea dados.
axis(1) # dibujar eje x
axis(2) #dibujar eje y
points(pressure$temperature, pressure$pressure)  #points es una función para dibujar una secuencia de puntos en las coordenadas especificadas. Los caracteres especificados se trazan, centrados en las coordenadas.
#Los parametros que se estan pasando son los puntos a graficas , el primer parametro es el vector de todas las componentes x de los puntos 
# mientras que el segundo parametro es el vector de todas las componentes y de los puntos
mtext("temperatura", side=1, line=3) #esta funcion introduce texto en la grafica , que funciona como etiqueta para los ejes.En este caso etiqueta para el eje x 
mtext("presion", side=2, line=3) #Texto etiqueta para el eje y.
mtext("Presion de vapor \ncomo una funcion de la Temperatura ",
side=3, line=1, font=2)

