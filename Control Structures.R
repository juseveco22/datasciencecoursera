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
