#Control Structures

#if-else
#Asignar valores si se cumplen las condiciones
#Condicional

if(x>3){
  y<-4
} else{
  y<-10
}

z<-if(x>3){
  4
} else{
  10
}


#For loops
# i es el indice del for

for(i in 1:10){
  print(i)
}

x<-c("a", "b", "c", "d")

for(i in 1:4){
  print(x[i])
}

for(i in seq_along(x)){
  print(x[i])
}

for(letter in x){
  print(letter)
}

#Nested loops

x<- matrix(1:6, 2,3)

for(i in seq_len(nrow(x))){
  for(j in seq_len(ncol(x))){
    print(x[i,j])
  }
}


#While

#Una sola condicion
count<-0
while(count<10){
  print(count)
  count<-count+1
}

#Dos o mas condiciones
z<-5

while(z>=3 && z<=10){
  print(z)
  coin<- rbinom(1,1,0.5)
  
  
  if(coin==1){     ## Random walk
    
    z <- z + 1
    
  } else{
    
    z <- z - 1
    
  }
}

#Repeat, Next, Break
# REPEAT inicia un loop infinito, este loop solo se para con BREAK

x0<-1
tol<- 1e-8

repeat{
  x1<- computeEstimate() #Funcion que estima valores / Funcion objetivo
  
  if(abs(x1-x0)<tol){
    break
  } else{
    x0<-x1
  }
}

#Functions

add2 <- function(x,y){
  x+y
}

above10 <- function(x){
  use<- x>10
  x[use]
}

above <- function(x, n=10){ ## Se especifica un valor en caso de que no se entre un argumento en n 
  use <- x > n
  x[use]
}

colum_mean <- function(m, removeNA = TRUE){ ## Variable logica para eliminar valores NaN 
  nc <- ncol(m)
  means <- numeric(nc)  ## Inicializando el vector que guarda los promedios
  
  for(i in 1:nc){
    means[i] <- mean(m[,i], na.rm=removeNA) ## Especifico a la funcion mean() que elimine los NaN, que no los tenga encuenta
  }
  means
}

##Functions
## x<-function(<arguments>)
## {
##     Do something
## }
## sd(data, na.rm=T/F) Desviacion estandar
## Cuando se crean funciones se pueden estipilar argumentos con valores predeterminados

f<-function(a, b=1, c=0, d = TRUE, e = NULL){
  print(a)
  print(b)
}

## The '...' argument
## Lista de argumentos que pueden ser pasados de otras funciones

myplot<- function(x, y, type="l", ...){   ## A la funcion plot le quiero cambiar el predeterminado de puntos a lineas "l"
  plot(x, y, type= type, ...)             ## la funcion plot() va a tomar los mismos argumentos faltantes con ...
}

#Funcion que devuelve funcion

make.power<- function(x){
  pow<-function(n){
    x^n
  }
  pow
}

cube<-make.power(3)
square<-make.power(2)

cube(3)
square(2)


#Dates and Times in R

d<-as.Date("2021-02-26")
unclass(d)       ##Numero de dias desde 1970-01-01

t<- Sys.time()   ## Hora del programa en la que se ejecuta la funcion
p<- as.POSIXlt(t)
names(unclass(p))

