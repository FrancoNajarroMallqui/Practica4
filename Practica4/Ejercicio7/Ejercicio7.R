#Nombre: Franco Najarro Mallqui 20081384c
#Respuesta 7: En este programa se utiliza el metodo de la biseccion para el calculo de la unica raiz para los cuantiles.
#El intervalo de busqueda de la raiz es de 0 a 50.



cuantil <- function(alfa){
x_0=0 # LA FUNCION DE DENSIDAD DE NORMAL ESTANDAR ES UNA FUNCION PAR . ES DECIR NO ES INYECTIVA . PERO SU CDF SI ES INYECTIVO YA QUE ES CRECIENTE 
# PODEMOS APLICAR EL METODO DE LA BISECCION YA QUE EXISTE UNA UNICA RAIZ PARA LA FUNCION F(X)-ALFA , PARA PODER HALLAR EL UNICO PUNTO DE CORTE CON EL EJE X.
x_n=50 # para este metodo se necesita dos puntos sobre el eje x donde existe la raiz entre ellos.
# tomaremos el intervalo suficientemente grande desde x_0=0 hasta x_n=500
Error_Aprox=abs((x_n-x_0)/x_n);
while (10^(-16)<Error_Aprox)
	{
		x_medio=(x_n+x_0)/2
		Prod=(pnorm(x_n,0,1)-alfa)*(pnorm(x_medio,0,1)-alfa);
		if (Prod<0)
		{
			x_0=x_medio
		}else
		{
			x_n=x_medio
		}
		Error_Aprox=abs((x_n-x_0)/x_n);
	}
return ( x_medio)
}

# EJECUTANDO ESTA FUNCION PARA HALLAR LA RAIZ:

# cuantil(0.95)
#[1] 1.644854
# cuantil(0.975)
#[1] 1.959964

#en el paquete de R existe la funcion inversa de la normal llamada qnorm(x) , donde su dominio es [0,1] y su rango es todo los reales
#Usamos esta funcion para poder comparar con nuestra funcion:
qnorm(0.975)
qnorm(0.95)

# qnorm(0.95)
#[1] 1.644854
# qnorm(0.975)
#[1] 1.959964

##PODEMOS VER QUE NUESTRA FUNCION ES MUY BUENA PARA HALLAR LOS CUANTILES DE LA FUNCION NORMAL ESTANDAR !!!





