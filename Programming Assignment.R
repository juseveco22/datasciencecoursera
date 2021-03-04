#Cargar varios paquetes al tiempo de csv
getwd()
setwd("specdata")
file_path<-dir()

monitor<-list()


for(i in seq_along(file_path)){
  
  monitor[[i]]<-read.csv(file=file_path[[i]])
  
}

## Leer todos los datos intento

mydata<-unzip("specdata.zip")
vec<-list(332)
for(i in 1:332){
  vec[i]<-read.csv(mydata[i])
}





#Forma larga
#Punto 2
d70<-read.csv("070.csv")
d70c<-d70[,3]   #El indice indica el timpo de contaminante 2<- sulf, 3<- nitratos
y70<-d70c[!is.na(d70c)]

d71<-read.csv("071.csv")
d71c<-d71[,3]   
y71<-d71c[!is.na(d71c)]

d72<-read.csv("072.csv")
d72c<-d72[,3]   
y72<-d72c[!is.na(d72c)]

#Punto 3
d34<-read.csv("034.csv")
d34c<-d34[,2]   #Sulfato
y34<-d34c[!is.na(d34c)]


#Punto 1

d1<-read.csv("001.csv")
d1c<-d1[,2]   #Sulfato
y1<-d1c[!is.na(d1c)]

d2<-read.csv("002.csv")
d2c<-d2[,2]   #Sulfato
y2<-d2c[!is.na(d2c)]

d3<-read.csv("003.csv")
d3c<-d3[,2]   #Sulfato
y3<-d3c[!is.na(d3c)]

d4<-read.csv("004.csv")
d4c<-d4[,2]   #Sulfato
y4<-d4c[!is.na(d4c)]

d5<-read.csv("005.csv")
d5c<-d5[,2]   #Sulfato
y5<-d5c[!is.na(d5c)]

d6<-read.csv("006.csv")
d6c<-d6[,2]   #Sulfato
y6<-d6c[!is.na(d6c)]

d7<-read.csv("007.csv")
d7c<-d7[,2]   #Sulfato
y7<-d7c[!is.na(d7c)]

d8<-read.csv("008.csv")
d8c<-d8[,2]   #Sulfato
y8<-d8c[!is.na(d8c)]

d9<-read.csv("009.csv")
d9c<-d9[,2]   #Sulfato
y9<-d9c[!is.na(d9c)]

d10<-read.csv("010.csv")
d10c<-d10[,2]   #Sulfato
y10<-d10c[!is.na(d10c)]

yyy<- c(y1, y2, y3, y4, y5, y6, y7, y8, y9, y10)
mean(yyy)


#Parte 2.

d1<-read.csv("001.csv")
d1s<-d1[,2]
d1n<-d1[,3]
y1s<-d1s[!is.na(d1s)]
y1n<-d1n[!is.na(d1n)]


d2<-read.csv("002.csv")
d2s<-d2[,2]
d2n<-d2[,3]
y2s<-d2s[!is.na(d2s)]
y2n<-d2n[!is.na(d2n)]

d6<-read.csv("006.csv")
d6s<-d6[,2]
d6n<-d6[,3]
y6s<-d6s[!is.na(d6s)]
y6n<-d6n[!is.na(d6n)]

d10<-read.csv("010.csv")
d10s<-d10[,2]
d10n<-d10[,3]
y10s<-d10s[!is.na(d10s)]
y10n<-d10n[!is.na(d10n)]

d20<-read.csv("054.csv")
d20s<-d20[,2]
d20n<-d20[,3]
y20s<-d20s[!is.na(d20s)]
y20n<-d20n[!is.na(d20n)]


