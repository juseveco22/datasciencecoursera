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


## mapply() pasa mas de una lista para ser utilizada dentro de los argumentos de una funcion

list(rep(1, 4), rep(2, 3), rep(3, 2), rep(4, 1))

mapply(rep, 1:4, 4:1)     ##Facilita la escritura de la expresion anterior. Aqui la funcion rep() tiene
                          ## dos argumentos, el primero es el numero y el segundo las veces que se repite
                          ## asi, la funcion dice: repita los numero del 1 a l 4 (1:4), 4 veces 1, 2 veces 3,
                          ## 3 veces 2 y 4 veces 1 (4:1)

## vectorizando una funcion

noise <- function(n, mean, sd){
        rnorm(n, mean, sd)
}

noise(5,1,2)

noise(1:5, 1:5, 2) ## La funcion por si sola no funciona, no da lo que busco.

mapply(noise, 1:5, 1:5, 2)  ## Cambio el numero de numeros y la media

list(noise(1,1,2), noise(2,2,2), noise(3,3,2), noise(4,4,2), noise(5,5,2))  ##forma larga



## tapply(). sirve para aplicar una funcion sobre una seccion de un vector
## tapply(X, INDEX, FUN, ...)


x<- c(rnorm(10), runif(10), rnorm(10,1))
f<- gl(3, 10)       #vector de 3 niveles (1, 2, 3) donde cada nivel se repite 10 veces

tapply(x,f, mean)   ## Encuentra el promedio por grupos definidos por los niveles de f
tapply(x,f, mean, simplify = FALSE)  ##Me da como resultado una lista

tapply(x, f, range)  ##Devuelve el maximo y minimo de las observaciones por nivel


## split() -> toma un vector y lo separa en grupos determinados por un factor o lista de factores
## split(VECTOR, FACTOR, ...)


x<- c(rnorm(10), runif(10), rnorm(10,1))
f<- gl(3, 10)
split(x,f)       ## la funcion simpre retorna una LISTA


## A esta separacion luego se le puede aplicar una de las funciones anteriores

lapply(split(x,f), mean)


## Otra aplicacion

library(datasets)
head(airquality)

s<- split(airquality, airquality$Month)  ##Separo el data frame por meses como factor

lapply(s, function(x) colMeans(x[, c('Ozone', 'Solar.R', 'Wind')], na.rm=TRUE))  ##Me devuelve una lista

sapply(s, function(x) colMeans(x[, c('Ozone', 'Solar.R', 'Wind')], na.rm=TRUE))  ##Me devuelve una matriz 
## x[, c('Ozone', 'Solar.R', 'Wind') me dice todas las filas de las columnas dentro de c()


## splitting on more than one level

x<- rnorm(10)
f1<- gl(2,5)
f2<- gl(5,2)

interaction(f1, f2)    ##Combina todos los niveles de f1 con todos los niveles de f2

str(split(x, list(f1, f2)))   ##Puedo o no usar la funcion interaction() para formar los factores

str(split(x, list(f1, f2), drop=TRUE))




