rm(list=ls())
n<-5
matriz<-matrix(,n,n);
error<- 0.1
for (i in 1:n){
  for(l in 1:n){
    matriz[i,l]<-i+l
   }
}
valor_final_error<-0
valor_final_exacto<-0
matriz2<-matriz 
matriz2<-matriz2+0.1
for (i in 1:n){
  for(l in 1:n){
    valor_final_error <- valor_final_error+matriz2[i,l]
    valor_final_exacto<- valor_final_exacto+matriz[i,l]
  }
}
error_porcentual <-((valor_final_error - valor_final_exacto)/valor_final_exacto)*100
cat('este es el la sumatoria de los valores de la matriz cuadrada n: ',valor_final_exacto)
cat('este es el error relativo porcentual: ',error_porcentual)

