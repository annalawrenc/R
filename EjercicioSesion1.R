
#**Ejercicios mtcars**

#**1. Previsualizar el contenido con la funcion head().**

#  Previsualizo los 100 primeras filas de mtcars:

head(mtcars,n=100)



#Puedo elegir las filas que no quiero que se muestren con ayuda del parámetro negativo.
#En este caso se muestran todas (dado que hay mas de 100 filas, sin las dos últimas).


head(mtcars,n=-2)


#**2. Mirar el n ??umero de filas y columnas con nrow() y ncol().**

#  Número de filas:

nrow(mtcars)

#  Número de columnas:

ncol(mtcars)


# **3. Crear un nuevo data frame con los modelos de coche que consumen menos de 15 millas/galon.**

mtcars15 <- mtcars [mtcars$mpg < 15,]


#**4. Ordenar el data frame anterior por disp.**

mtcars15[order(mtcars15[,"disp"]),]


#**5. Calcular la media de las marchas (gear) de los modelos del data frame anterior.**

#  Se puede hacer la media de varias maneras. 

#Ejemplo 1

sum(mtcars15["gear"])/nrow(mtcars15["gear"])

#Ejemplo 2

mean(mtcars25[, "gear"])

#Ejemplo 3

attach(mtcars15)
mean(gear)

detach(mtcars15)

#**6. Cambiar los nombres de las variables del data frame a var1, var2, ..., var11.**

#  **Pista: Mirar la documentaci ??on de la funci ??on paste y usarla para generar el vector ("var1", "var2", ..., "varN") donde N es el n ??umero de variables del data frame.**

#  Compruebo los nombres de las variables del data frame mtcars15:

names(mtcars15) 	

# Creo un vector que tenga el mismo número de elementos que columnas tiene mtcars15 con nombres Var+número de columna.

nomcol<- paste0("Var",c(1:ncol(mtcars15)))
nomcol

# Asigno como nombres de las variables de mtcars15 los valores del vector.

names(mtcars15)<- nomcol

# Ahora compruebo los nombres de las variables de mtcars15:

names(mtcars15)


#**Ejercicios iris**

#**1. ¿Como est ??a estructurado el data frame? (utilizar las funciones str() y dim()).**

#  La función dim() proporciona información sobre número de elementos y número de variables.

dim(iris)

# El data frame tiene 5 dimensiones y en cada dimensión 150 elementos.

# La función str() proporciona información sobre el número de elementos, número de variables y tipo de las variables.

str(iris)

# El data frame tiene 150 elementos (observaciones) y 5 variables. Los datos de las 4 primaras dimensiones son numéricos y los de la última dimensión son factores de3 niveles.

# **2. ¿De que tipo es cada una de las variables del data frame?.** 

#  El tipo de cada una de las variables se ve en el resultato de str(iris). 
#  También lo puedo ver ejecutando:

sapply(iris,class)


# **3. Utilizar la funcion summary() para obtener un resumen de los estadisticos de las variables.**

summary(iris)


#**4. Comprobar con las funciones mean(), range(), que se obtienen los mismos valores.**

lapply(iris[,1:4], mean)

# Vemos que la media coincide para cada columna con summary(iris).

lapply(iris[,1:4], range)

#Vemos que el valor máximo y mínimo coincide con los de summary(iris).


#**5. Cambia los valores de las variables Sepal.Length Sepal.Width de las 5 primeras observaciones por NA.**

#  Primero hago una copia del data frame.

iris_mod <- iris

# En la copia modifico los valores:

iris_mod[1:5,1:2] <- NA

# Compruebo que están modificados:

head(iris_mod,5)


# **6. ¿Qu ??e pasa si usamos ahora las funciones mean(), range() con las variables Sepal.Length y Sepal.Width? ¿Tiene el mismo problema la funcion summary()?**


lapply(iris_mod[,1:4], mean)


# La función mean() no calcula los rangos en los que aparecen valores NA.


lapply(iris_mod[,1:4], range)


# Lo mismo pasa con la función range().


summary(iris_mod)


# La función summary() no tiene ese problema. Calcula los resultados y lista el número de NA's.


# **7. Ver la documentacion de mean(), range(), etc. ¿Que parametro habria que cambiar para arreglar el problema anterior?.

?mean
?range

# Para exluir NA's hay que añadir rm.na=T


lapply(iris_mod[,1:4], mean, na.rm =T)


lapply(iris_mod[,1:4], range, na.rm =T)


# **8. Visto lo anterior, ¿por qu ??e es importante codificar los missing values como NA y no como 0, por ejemplo?**

#  Es importante porque NA's son fáciles de omitir con na.rm =T, mientras que 0 se interretaría como un valor y distorsionaría los resultados de cálculo.


# **9. Eliminar los valores NA usando na.omit().**

na.omit(iris_mod)



#**10. Calcular la media de la variable Petal.Length para cada uno de las distintas especies (Species). Pista: usar la funcion tapply().**


tapply(iris_mod$Petal.Length,iris_mod$Species, mean, na.rm =T)               



