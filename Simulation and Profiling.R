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

##Generatin random numbers

## Funciones para generar numeros aleatorios:
## rnomr() -> generate random NORMAL variates with a given mean and standard deviation
## dnorm() -> evaluate the NORMAL probability density with a given mean and standard deviation at a point
## pnorm() -> evaluate the cumulative distribution function for a NORMAL distribution
## rpois() -> generate random POISSON variates with a given rate

## d -> density, r -> random number generation, p -> cumulative distribution, q -> quantile function

x<- rnorm(100,4,5)
summary(x)

##Setting the random number seed with the set.seed() ensure reproducibility

set.seed(1)  ##Generan el mismo set de numeros aleatorios
rnorm(5)
rnorm(5)

set.seed(1)  ##Al llamar el seed me devuelve el mismo valor calculado antes
rnorm(5)

## Generating Poisson data

rpois(10,1)
rpois(20,2)
rpois(10,20)

##Cumulative distribution, me permite evaluar probabilidades

ppois(2, 2)   ## Pr(x <= 2) si la tasa es 2

ppois(4, 2)   ## Pr(x <= 4) si la tasa es 2

ppois(6, 2)   ## Pr(x <= 6) si la tasa es 2



## Simulating a Linear Model


set.seed(20)

x<- rnorm(100)
e<- rnorm(100, 0, 2)
y<- 0.5 + 2*x + e

summary(y)
plot(x,y)


## What if x is binary

set.seed(10)

x<- rbinom(100, 1, 0.5)
e<- rnorm(100, 0, 2)
y<- 0.5 + 2*x + e

summary(y)
plot(x,y)


## Poisson distribution

set.seed(1)
x <- rnorm(100)
log.mu <- 0.5 + 0.3*x

y<- rpois(100, exp(log.mu))
summary(y)
plot(x,y)


## Random Sampling

## the sample function draws randomly from a specified set of (scalar) objects
## allowing you to sample from arbitrary distributions

set.seed(1)

sample(1:10, 4)  ## Deme 4 numeros de una lista del 1 al 10

sample(letters, 5)  ## Deme 5 letras

sample(1:10)  ## Permutacion

sample(1:10, replace=TRUE)  # Muestreo con repeticion

































