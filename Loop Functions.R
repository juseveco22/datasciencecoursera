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

lapply(x, function(elt) elt[,1])

