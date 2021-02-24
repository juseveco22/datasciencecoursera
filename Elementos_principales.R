#Matrices
# x<-matrix(nrow,ncol)

x <- matrix(nrow=2,ncol=3)
x
dim(x)

y<-matrix(1:8,nrow=2,ncol=4)
y

m<-1:10
m
dim(m)<-c(2,5) #transformar el vector en una matriz de 2 filas y 5 columnas
m

#Añadir columnas cbind(x,y) o añadir filas rbind(x,y)

p<-1:4
q<-10:13
f<-rbind(p,q)
l<-cbind(p,q)
l
f


#Factor: tipo de vector que sirve para representar datos categoricos
#ejemplo "female" y "male"
#Se crean con la funcion factor()

w <-factor(c("yes","yes","no","yes","no"))
w
table(w)
unclass(w)

#Missing values
#is.na() o is.nan() sirve para revisar si hay datos faltantes

e<-c(3,2,NA,2,3)
is.nan(e)
is.na(e)

#Data Frames
#Guardar datos en tablas

x<-data.frame(foo=1:4, bar=c(T,T,T,F))
x

#Name atribute

x<-c(1:3)
names(x)<-c("Opt1","Opt2","Opt3")

y<-list(a=1,b=2,c=3)

m<-matrix(1:4,nrow=2,ncol=2)
dimnames(m)<-list(c("a","b"),c("c","d"))


#Subsetting

x<-c('a','b','c','c','d','e','e')
x[1]
x[1:4]
x[x>'a']

u<- x>'a'
u


#Subsetting list

x <- list(foo=1:4, bar=0.6, baz="Hello")
x[1]             #Devuelve una lista con la secuencia
x[[1]]           #Devuelve la secuencia, pero no como una lista

x$bar            #Devuelve el valor que esta asociado con la palabra "bar"

x[c(1,3)]        #Devuelve la posicion 1 y 3 de la lista

name<- "foo"
x[[name]]


#Subsetting matrix

x<- matrix(1:6,nrow=2,ncol=3)
x[1,2]
x[,1]
x[1,]


#Removing Nan Values

x<-c(1, 2, NA, 4, NA, 5)
y<-c('a','b',NA, 'd', NA, 'f')

bad<-is.na(x)   #Me dice que elementos son NA. Crea un vector logico
x[!bad]         #[!bad] me da los elementos que si estan, que no son NA

good<- complete.cases(x,y)    #Me da un vector que me dice en que posiciones de los vectores hay informacion NA
good

x[good]
y[good]


#Vectorized operations

x <- 1:4 ; y<- 6:9
x+y
x>2
x>=2
y==8
x*y
x/y


x<- matrix(1:4,2,2) ; y<- matrix(rep(10,4),2,2)

x*y     #Multiplicacion por elementos
x/y
x%*%y   #Multipliacacion matricial
