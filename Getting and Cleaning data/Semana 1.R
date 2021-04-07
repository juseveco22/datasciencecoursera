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