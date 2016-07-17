library(ggplot2)

# voy a esoger aleatoriamente 100 registros para que la gráfica se parezca a la del ejemplo:

index_filtro <- sample(1:length(diamonds[[1]]), 100)

ciendiamonds <- diamonds[index_filtro,] 

# también se puede hacerlo con sample_n y con dplyr

library(dplyr)
ciendiamonds <- sample_n (diamonds, 100, replace = FALSE)

q<- ggplot(ciendiamonds, aes( x=carat, y= price)) # creamos gráfico vacio
q

c <- q + geom_point(aes(color=color)) # pintamos la capa de puntos
c

r <- c+ geom_smooth(method=lm, formula= y~x) # pintamos la capa de la linea de regresion
r
