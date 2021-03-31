## The str function 
## Display the internal structure of an R object
str(lm)   ##me da los argumentos de la funcion lm()

x<-rnorm(100,2,4)
summary(x)  ##Nos da informacion estadistica de los datos
str(x)      ##Nos da el tipo de dato que es, el tamaño y los primeros datos

f<-gl(40,10)   ## Creo 40 niveles cada uno repetido 10 veces
str(f)

library(datasets)
head(airquality)
str(airquality)

m<- matrix(rnorm(100), 10, 10)
str(m)

s<- split(airquality, airquality$Month)
str(s)