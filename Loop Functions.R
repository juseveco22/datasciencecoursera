##Loop functions
##
##
## lapply()

x<-list(a<-1:5, b=rnorm(10), c=rnorm(1:20), d=rnorm(100,5))
lapply(x,mean)                ##Aplica la funcion mean() a los valores de la lista. Devuelve una LISTA


sapply(x,mean)                ##Devuelve un VECTOR con los valores 

x<-1:4
lapply(x,runif)               ##Distribucion uniforme
                              ##Me agrega una distribucion uniforme en el primer valor
                              ##Agrega 2 valores uniformes en el segundo valor, 3 en el tercero ...


x<-1:4
lapply(x,runif, min=0, max=10)  ##Puedo agregar mas argumentos de la funcion como min y max

## lapply funciona con funciones anonimas. ejm

x<- list(a=matrix(1:4, 2, 2), b=matrix(1:6, 3, 2))

##Quiero extraer la primera columna de cada matriz

lapply(x, function(elt) elt[,1])  ##Creo una nueva funcion que le entra a lapply como argumento


## apply() aplica funciones a arreglos, columans y filas de matrices, arreglos de matrices
str(apply)      ## Me da informacion sobre los argumentos de la funcion

x<-matrix(rnorm(200), 20, 10)

apply(x, 2, mean)   ##El 2 indica que mantengo las columnas y elimino las filas,
                    ## Por lo que el resultado va a ser el promedio por columnas.

apply(x,1,sum)      ##El 1 indica que mantengo las filas de la matriz, por lo que
                    ## la eel resultado va a ser la suma por fila de los valores

## Una forma mas rapida de calcular lo promedios/sumas en matrices es usar las funciones 
## rowMeans() / rowSum() ; colMeans(), colSum()


x<-matrix(rnorm(200), 20, 10)

apply(x, 1, quantile, probs=c(0.25, 0.5, 0.75))   ## Quiero calcular los percentiles 0.25, 0.5 y 0.75
                                                  ## de las filas de mi matriz. La funcion cuantil
                                                  ## requiere de argumento los percentiles que se
                                                  ## van a calcular por eso se agrega "probs"




##Matriz de promedios en un arreglo

a <- array(rnorm(2*2*10), c(2, 2, 10))    ## Distribucion normal, las dimensiones son definidas es
                                          ## c(2, 2, 10) lo que lo hace un arreglo de 3D

apply(a, c(1, 2), mean)   ##El argumento c(1, 2) me mantiene dos dimensiones pero elimina la tercera
                          ## para obtener la matriz de los promedios
rowMeans(a, dims =2)      ## Esta misma operacion se puede realizar con la funcion rowMeans()






