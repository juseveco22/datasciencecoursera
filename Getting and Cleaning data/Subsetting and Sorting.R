## Subsetting

set.seed(13435)
X<- data.frame("var1"=sample(1:5), "var2"=sample(6:10), "var3"=sample(11:15))
X<- X[sample(1:5),]; X$var2[c(1,3)]=NA
X
## Subset a column
X[,1]

X[,"var1"]
X[1:2,"var2"]

##Logical ands or ors

X[X$var1<=3 & X$var3 > 11,]     ## AND is represented as &

X[X$var1<=3 | X$var3 > 15,]     ## OR is represented as |

## Dealing with missing values

X[which(X$var2 > 8),]          ## Me devuelve valores omitiendo los NA

##Sorting

sort(X$var1)    ##Organiza los valores, se pueden agregar argumentos que especifiquen el orden

sort(X$var1, decreasing = TRUE)

sort(X$var2,na.last = TRUE)

##Ordering

X[order(X$var1),]

X[order(X$var1, X$var3),]

library(plyr)

arrange(X, var1)

arrange(X, desc(var1))


##Adding rows and columns

X$var4 <- rnorm(5)
X

Y <- cbind(X, rnorm(5))
Y


##Summarizing Data

if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://opendata.arcgis.com/datasets/53319332a909407e8ee52ae8ea79663d_0.csv?outSR=%7B%22latestWkid%22%3A3857%2C%22wkid%22%3A102100%7D"
download.file(fileUrl, destfile = "./data/restaurants.csv", method = "curl")
restData <- read.csv("./data/restaurants.csv")

head(restData, n=3)  ##Ver los primeros 3 datos del data Set
tail(restData, n=3)  ##Ver los ultimos 3 datos del data Set

summary(restData)
str(restData)

quantile(restData$plcdst_no, na.rm=TRUE)   ##Me da los cuantiles 0, 25, 50, 75, 100

quantile(restData$plcdst_no, probs = c(0.5,0.75,0.9)) ## le puedo decir los cuantiles que deseo

table(restData$zipcode, useNA = "ifany")  ## Se pueden crear tablas con elementos del DataSet
## Se pueden crear tablas de 2D pasando un segundo argumento a la funcion table()

table(restData$zipcode, restData$cncldst)

##Check for missing values
sum(is.na(restData$cncldst)) ## Me da el numero de NA dentro de esta clase

any(is.na(restData$cncldst))

all(restData$zipcode>0)


## Row and column Sum

colSums(is.na(restData)) ##Sume por columnas el numero de NA presentes

all(colSums(is.na(restData))==0)


##Valores con caracteristicas especificas

table(restData$zipcode %in% c("21212"))

restData[restData$zipcode %in% c("21212"),] ##crear un nuevo DF con los zipcode que queremos

##Cross table

data("UCBAdmissions")
df = as.data.frame(UCBAdmissions)

summary(df)

xt<- xtabs(Freq ~ Gender + Admit, data=df)
xt






