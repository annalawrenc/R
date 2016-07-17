
#install.packages("dplyr")

library(dplyr) # cargamos paquete dplyr

# Seleccionar los diamantes con corte ideal
diamonds_ideal <- filter(diamonds, cut =="Ideal")

# Seleccionar las columnas carat, cut, color, price y clarity.
seleccion <- select(diamonds_ideal,carat, cut, color, price,clarity ) 

# Crear una nueva columna precio/quilate. 
NuevaColumna <- mutate(seleccion, precio_quilate =price/carat) 

# Agruar por condiciones
by_color <- group_by(diamonds_ideal, color)                                 # Agrupar los diamantes por color.
mean_by_color <- summarise (by_color, mean(carat),mean(depth),mean(price))  # Una vez agrupado, podemos ver porejemplo caractaristicas medias por color


# Calcular la media del precio/quilate para cada uno de los grupos anteriores. 
by_color <- group_by(NuevaColumna, color)
pr_med_quil <- summarise(by_color, mean(precio_quilate))


# Ordenar por precio/quilate de forma descendente.

colnames(pr_med_quil)[2]<- "PrecioMedioQuilate"            #cambio el nombre de la columna para poder usar arrange
ordenado <- arrange(pr_med_quil, desc(PrecioMedioQuilate)) # Ordenamos por PrecioMedioQuilate de forma descendente
