
#Nombre: Franco Najarro Mallqui 20081384c
#Respuesta 8: En este programa se usa el producto cartesiano de los conjuntos para poder generar todos los casos posibles , se selecciona aquellos que cumplen con la suma del dinero total. Los datos se estan leyendo de un archivo de texto.



formas_macondo <- function(){
datos = scan("Entrada_problema_4.txt") # lectura desde el archivo de texto
num_pruebas=datos[1]
#print(num_pruebas)
i=1
while(i<length(datos)){
i=i+1
N=datos[i]
#print(N)
i=i+1
A=datos[i]
#print(A)
i=i+1
B=datos[i]
#print(B)
i=i+1
C=datos[i]
#print(C)
i=i+1
D=datos[i]
#print(D)
c1=c(0:A)
c2=c(0:B)
c3=c(0:C)
c4=c(0:D)
matriz_coeficientes=expand.grid(c1,c2,c3,c4) # producto cartesiano!!
matriz_coeficientes[,2]=matriz_coeficientes[,2]*2
matriz_coeficientes[,3]=matriz_coeficientes[,3]*5
matriz_coeficientes[,4]=matriz_coeficientes[,4]*10
combinaciones=apply(matriz_coeficientes,1,sum)
print( length(combinaciones[combinaciones==N]))
}

}

#LA EJECUCION DE ESTE PROGRAMA PARA EL ARCHIVO Entrada_problema_4.txt SERIA :

# formas_macondo()
#Read 11 items
#[1] 2
#[1] 2


