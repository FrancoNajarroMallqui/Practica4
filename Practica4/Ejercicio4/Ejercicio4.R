#Nombre: Franco Najarro Mallqui 20081384c
#Respuesta 4: Este programa calcula el valor esperado de una variable aleatoria X , definida como la mayot frecuencia de algunos de los caracteres
#utilizados para formar una cadena . Se esta usando un archivo de entrada de datos: Entrada_problema_2.txt  . Ademas se esta creando
#una funcion para el calculo de la mayor frecuencia en una cadena.



max_frecuencias<- function(x,N){ # Funcion para el calculo de la mayor frecuencia de uso de algun valor entre 1:N 
freq=numeric(N)
for( i in 1:length(x)){
freq[x[i]]= freq[x[i]] +1
}
return ( max(freq) )
}


valor_esperado <- function(){  # Calculo del valor esperado !!!
datos = scan("Entrada_problema_2.txt") # Leyendo los datos del archivo de entrada !!
T=datos[1]
i=1
while(i<2*T){  # Procesando cada caso del archivo de entrada mediante un bucle
i=i+1
M=datos[i] # leyendo M
i=i+1
N=datos[i] # Leyendo N
c=sample(1:N,1)
c_aux=c[1]
for(j in 2:M){ #CONSTRUYENDO UNA SECUENCIA NO DECRECIENTE DE TAMANIO M  con numeros desde 1:N
c_aux=sample(c_aux:N,1)
c=c(c,c_aux)
}

X=c(max_frecuencias(c,N))
esperanza=mean(X)
#while(error()>10^(-3)){
k=1
while(k<90000){
c=sample(1:N,1)
c_aux=c[1]
for(j in 2:M){ #CONSTRUYENDO UNA SECUENCIA NO DECRECIENTE DE TAMANIO M   con numeros desde 1:N
c_aux=sample(c_aux:N,1)
c=c(c,c_aux)
}
c=sample(1:N,M,replace=TRUE)
X=c(X,max_frecuencias(c,N))
#esperanza=mean(X)
k=k+1
}
print(mean(X)) # Imprimiendo la esperanza con el uso de la funcion mean 
}
}

# LA EJECUCION DE ESTA FUNCION ES:

#> valor_esperado()
#Read 9 items
#[1] 1.000011
#[1] 1.888389
#[1] 1.111556
#[1] 3.187789
> 


