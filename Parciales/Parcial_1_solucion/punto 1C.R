rm(list=ls())
n=3
valor_final_exacto<-0
valor_final_error<-0
for(i in 1:n){
  valor_final_exacto<-valor_final_exacto+i^2
  valor_final_error<-valor_final_error+(i+0.1)^2
  
}
error_porcentual <-((valor_final_error - valor_final_exacto)/valor_final_exacto)*100
cat('este es el la sumatoria de los valores hasta n elevados al cuadrado: ',valor_final_exacto)
cat('este es el error relativo porcentual: ',error_porcentual)