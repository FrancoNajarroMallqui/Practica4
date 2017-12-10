
# Nombre: Franco Najarro Mallqui 20081384c

#Respuesta 3) .En este ejercicio se usa la distribucion de Poisson con parametro lambda. Ademas para el calculo del PMF para un cierto valor x 
# Se esta usando la expresion recursiva , esta se cumple ya que si reemplazamos x+1 en la funcion de distribucion puede formase el PMF del valor anterior de x


#a)HALLANDO LA EXPRESION RECURRENTE PARA LA DISTRIBUCION DE POISSON.

# esto es: PMF(x+1)= ( lambda^(x+1) ) * exp(-lambda) / (x+1)! = lamba^(x)*lambda*exp(-lambda)/ (x! * (x+1) ) ,
#ENTONCES PMF(x+1)= lambda/(x+1) * PMF(x)  !!!!


p<-function(x,lambda){ #CALCULA el PMF de X=x
if(x==0){
return (exp(-lambda))
} else 
{
return (p(x-1,lambda)*lambda/(x))  # LLamada recursiva!!
}

} # end function

#EJECUTANDO ESTA FUNCION PARA HACER ALGUAS PRUEBAS !!

# p(0,6)
#[1] 0.002478752
# p(1,6)
#[1] 0.01487251
# p(2,6)
#[1] 0.04461754
# p(3,6)
#[1] 0.08923508
# p(4,6)
#[1] 0.1338526


F<-function(x,lambda){
return ( sum(sapply(c(0:x), p,lambda) )) # Calculo del CDF de la variable X que sigue la distribucion de Poisson !!
}

#EJECUTANDO ESTA FUNCION PARA COMPROBAR SU FUNCIONAMIENTO:

#F(4,6)
#[1] 0.2850565

#COMPROBANDO EL CORRECTO FUNCIONAMIENTO DE LA FUNCION F MEDIANTE UN EJEMPLO: F(4,6) .COMPARANDO LA SALIDA DE ESTA
#ULTIMA FUNCION CON LA SALIDA DE LA SUMA DE LOS PMF DESDE 0 HASTA 4 CON LAMBDA=6 :
# sum(p(0,6),p(1,6),p(2,6),p(3,6),p(4,6))
#[1] 0.2850565


#ESTIMANDO EL VALOR DE LA VARIABLE ALEATORIA X , MEDIANTE LA SIGUIENTE FUNCION:

F.rand <- function () {  #AQUI SE ESTA TOMANDO EL PARAMETRO LAMBDA = 1  . DE OTRO MODO TENDRIA QUE PASARSE COMO PARAMETRO
u <- runif(1)
x <- 0
while (F(x,1) < u) {
x <- x + 1
}
return(x) 
}

#LA EJECUCION DE ESTA FUNCION SERIA:

# F.rand()
#[1] 1
# F.rand()
#[1] 1
#F.rand()
#[1] 2
# F.rand()
#[1] 2
# F.rand()
#[1] 2
# F.rand()
#[1] 1
# F.rand()
#[1] 1
# F.rand()
#[1] 2
# F.rand()
#[1] 3
# F.rand()
#[1] 0
# F.rand()
#[1] 2



#AHORA MEJORANDO EL PROGRAMA , PARA UNA VARIABLE ALEATORIA DISCRETA QUE SIGUE LA DISTRIBUCION DE POISSON:

F.rand <- function(lambda) {     # ESTO ES PARA LA DISTRIBUCION DE POISSON , CON UN PARAMETRO LAMBDA
u <- runif(1)
x <- 0
 p.x <-p(0,lambda)
 F.x <- F(0,lambda)
while (F.x < u) {
x <- x + 1
 p.x <-p(x,lambda)
 F.x <- F.x + p.x   # esto es por la propiedad del CDF :  F(x+1) = F(x) + P(X=x)  !!!
}
return(x)
} 

# UN EJEMPLO DE EJECUCION SERIA LA SIGUIENTE:

# F.rand(6)
#[1] 5
# F.rand(6)
#[1] 8
# F.rand(6)
#[1] 8
# F.rand(6)
#[1] 12
# F.rand(6)
#[1] 7
# F.rand(6)
#[1] 3
# F.rand(6)
#[1] 9
# F.rand(6)
#[1] 11
# F.rand(6)
#[1] 5
# F.rand(6)
#[1] 8


###############################################
