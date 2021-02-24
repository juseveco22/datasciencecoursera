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

