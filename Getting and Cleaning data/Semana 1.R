## Downloading files


##Crear un directorio

if(!file.exists("data")){
        dir.create("data")
}

## Getting data from the internet
## download.file(url, destfile, method)  son los parametros mas importantes

file <- "https://opendata.arcgis.com/datasets/7055dbb02f0c4f14ab7ea3eb5ebfda42_0.csv?outSR=%7B%22latestWkid%22%3A3857%2C%22wkid%22%3A102100%7D"
download.file(file, destfile = "./data/cameras.csv",method = "curl")
list.files("./data")


dateDownloaded <- date()
dateDownloaded

cameraData <- read.csv("cameras.csv", sep = ",", header = TRUE)
head(cameraData)


## Read Excel Files

## library(xlsx)   ## Me abre la libreria de Excel
## read.xlsx("File", sheetIndex = 1, header = TRUE)


## Create data tables like data frames


## The American Community Survey distributes downloadable data about United States communities. 
##Download the 2006 microdata survey about housing for the state of Idaho using download.file() from here: 
        
        ## https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv

## and load the data into R. The code book, describing the variable names is here:
        
       ## https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf 



dire<- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
Datos<-download.file(dire, destfile = "./data/datos.csv",method = "curl")

data<-read.csv("Getting and Cleaning data/getdata_data_ss06hid.csv")

worth<-data$VAL

## How many properties are worth $1,000,000 or more?

bad<-is.na(worth)
wworth<-worth[!bad]

m<-wworth[wworth>23]
m

length(m)


##Download the Excel spreadsheet on Natural Gas Aquisition Program here: 
        
        ##https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx 

##Read rows 18-23 and columns 7-15 into R and assign the result to a variable called dat:

library(xlsx)
row<-18:23
col<-7:15
dat<-read.xlsx("Getting and Cleaning data/getdata_data_DATA.gov_NGAP.xlsx", sheetIndex = 1, header = TRUE, rowIndex = row, colIndex = col)

## What is the value of:

sum(dat$Zip*dat$Ext,na.rm=T)



## MySQL

library(RMySQL)
library(DBI)

## Abrir una conexion
ucscDb <- dbConnect(MySQL(), user="genome", host = "genome-mysql.cse.ucsc.edu") ## Conectar con DB

## Pasar una Query
result <- dbGetQuery(ucscDb, "show databases;"); dbDisconnect(ucscDb) ## Desconectarme de la DB

result

hg19 <- dbConnect(MySQL(), user="genome", db="hg19", host = "genome-mysql.cse.ucsc.edu")

allTables<- dbListTables(hg19)  ## Mostrar las tablas del DB
length(allTables)               ## Numero de todas las tablas

allTables[1:5]

dbListFields(hg19, "affyU133Plus2")  ## Ver los campos de la tabla affyU133Plus2

dbGetQuery(hg19, "select count(*) from affyU133Plus2")

affyData <- dbReadTable(hg19, "affyU133Plus2")
head(affyData)


query <- dbSendQuery(hg19, "select * from affyU133Plus2 where misMatches between 1 and 3")
affyMis <- fetch(query); quantile(affyMis$misMatches)

affyMisSmall <- fetch(query, n=10); dbClearResult(query);

dim(affyMisSmall)

dbDisconnect(hg19)


## WebSites

con =url("http://scholar.google.com/citations?user=HI-I6C0AAAAJ&hl=en")
htmlCode=readLines(con)        
close(con)        
htmlCode

install.packages("XML")
library(XML)
library(httr)

url <- "http://scholar.google.com/citations?user=HI-I6C0AAAAJ&hl=en"  
html2 =GET(url)
content2=content(html2, as ="text")
parsedHtml= htmlParse(content2, asText = TRUE)
xpathSApply(parsedHtml, "//title", xmlValue)


