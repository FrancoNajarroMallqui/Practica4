#Nombre: Franco Najarro Mallqui 20081384c
#Respuesta 6: Este programa calcula el numero de parejas que se pueden formar a partir de N grupos , donde hay algunas restricciones
# para formar las parejas.
#Los datos se leeran de una archivo de texto: Entrada_problema_3.txt  . En este caso con 10000 filas de datos






#####################################################
numero_parejas<- function(){
datos = scan("Entrada_problema_3.txt") # Leyendo datos del archivo de entrada
num_parejas=datos[1] # leyendo el numero de grupos 
H=datos[c(1:num_parejas)*2] # Leyendo el vector de hombres , tomando un sub-vector del vector datos
M=datos[c(1:num_parejas)*2+1]  # Leyendo el vector de mujeres , tomando un sub-vector del vector datos
mod = 10^9 +7  # modulo con el que se trabajara
numero_pare=0
for(i in 2:length(H) ){
numero_pare=(numero_pare%%mod+ sum(M[1:i-1]*H[i])%%mod) %%mod  # Contando el numero de parejas , ademas aplicando el modulo
}
print(numero_pare) # Imprimiendo en numero de parejas que se pueden formar
}


#EJECUTANDO ESTA FUNCION PARA UNA ENTRADA CON 10000 FILAS DE DATOS , TENEMOS:
#Read 20001 items
#[1] 256186407

