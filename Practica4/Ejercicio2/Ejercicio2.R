# Nombre: Franco Najarro Mallqui 20081384c

#Respuesta 2) . En este ejercicio se usa la funcion calcular_probabilidad para poder hallar la probabilidad
#de que Si y Sj sean 1 y ademas de que |i-j| <=K . Se esta usando un archivo de entrada llamado: 
#Entrada_problema_1.txt.
#Se esta usando un bucle while para poder recorrer todos los casos de prueba y ademas una funcion llamada mcd para poder reducir la respuesta a una fraccion irreductible.

2)




mcd<- function (m, n)
{
	while(m!=n)
	{
		if(m>n){
			m=m-n
		} else
			{
			n=n-m
		}
	}
	return(m)
}

calcular_probabilidad <- function(){
datos = scan("Entrada_problema_1.txt")
T=datos[1] # Lee el numero de casos
i=1
while(i<3*T+1){

i=i+1
N=datos[i] # Lee N
i=i+1
K=datos[i] #Lee K
i=i+1
S=datos[i] # Lee la cadena
digitos=strsplit( toString(S),NULL)
total_1=length(digitos[[1]][digitos[[1]]=="1"]) # Esto calcula el numero de caracteres "1" de la cadena de entrada del archivo!!!
favorables=total_1^2
totales=length(digitos[[1]])^2
cat("\nprobabilidad de que Si y Sj sean 1:\n",favorables%/%mcd(favorables,totales),"/",totales%/%mcd(favorables,totales),"\n")
producto_cartesiano=expand.grid(1:N,1:N)
dif=abs(producto_cartesiano[2]-producto_cartesiano[1])
favorables_dif=length(dif[[1]][dif[[1]]<=K])
cat("\nprobabilidad de que|i-j| <=K:\n", favorables_dif%/%mcd(favorables_dif,N^2),"/",N^2%/%mcd(favorables_dif,N^2),"\n")
}

}

# LA EJECUCION DE ESTE PROGRAMA USANDO LOS DATOS DE ENTRADA DEL ARCHIVO CORRESPONDIENTE ES:

#probabilidad de que Si y Sj sean 1:
# 9 / 16 

#probabilidad de que|i-j| <=K:
# 5 / 8 

#probabilidad de que Si y Sj sean 1:
# 1 / 9 

#probabilidad de que|i-j| <=K:
# 5 / 6 

