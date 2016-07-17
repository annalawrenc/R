
# Proyecto diabetes
# ----------------------------------------------------------------------------------------
# Cargar los datos en R y eliminar los missing values, que est´an codi???cados como -9999.00.



# Opcion 1
# --------

diabetes <- read.table("diabetes.data",header = TRUE) # importo datos con cabeceros, los valores no válidos por defecto son NA

#eliminar NA: como en el dataset todos los valores válidos son positivos pongo NA a los valores menores de cero
diabetes [diabetes$BMI < 0, 3] <- NA
diabetes [diabetes$BP < 0, 4] <- NA
diabetes [diabetes$S1 < 0 , 5] <- NA
diabetes [diabetes$S2 < 0 , 6] <- NA
diabetes [diabetes$S3 < 0 , 7]<- NA
diabetes [diabetes$S4 < 0 , 8]<- NA
diabetes [diabetes$S5 < 0 , 9]<- NA
diabetes [diabetes$S6 < 0 , 10]<- NA
diabetes [diabetes$Y < 0 , 11]<- NA


diabetes_sin_na <- diabetes[complete.cases(diabetes), ] #eligo solo los registros completos, sin NA




# Opcion 2
# --------

diabetes <- read.table("diabetes.data",header = TRUE) # importo datos con cabeceros, los valores no válidos por defecto son NA


buscar_na <- function(x){x<0}                         # con una función que busca valores menores de cero identifico los valores no válidos (menores de cero)
na <- apply(diabetes[ ,-2], 2, buscar_na)             # al aplicar la función omito columna 2 que no es numérica

diabetes_sin_na <- diabetes[!apply(na, 1, any),]      # eligo solo los registros en los que no hay ningún valoe inválido, es decir: lo contrario al resultado de la función buscar_na





# Opcion3
# -------

diabetes <- read.table("diabetes.data",header = TRUE, na.strings="-9999.0")   # importo datos con cabeceros y configuro los valores -9999.00 como NA
diabetes_sin_na <- diabetes[complete.cases(diabetes), ]                       # eligo solo los registros completos, sin NA


#----------------------------------------------------------------------------------------
#Ver el tipo de cada una de las variables


str(diabetes_sin_na)  # puedo ver tipos de todas las variables a la vez con ejemplos 


#también puedo ver tipo de cada variable por separado
class(diabetes_sin_na [[1]])
class(diabetes_sin_na [[2]])
class(diabetes_sin_na [[3]])
class(diabetes_sin_na [[4]])
class(diabetes_sin_na [[5]])
class(diabetes_sin_na [[6]])
class(diabetes_sin_na [[7]])
class(diabetes_sin_na [[8]])
class(diabetes_sin_na [[9]])
class(diabetes_sin_na [[10]])
class(diabetes_sin_na [[11]])


#--------------------------------------------------------------------------------------
#Realizar un analisis estadistico de las variables: calcular la media, varianza, rangos, etc. 
#¿Tienen las distintas variables rangos muy diferentes?.


summary(diabetes_sin_na)          # calculo min, max, media, mediana y los cuartiles para cada variable
apply(diabetes_sin_na[-2],2,var)  # calculo la varianza para cada variable, excluyendo la segunda que no es numérica

# Observamos que las variables tienen rangos muy diferentes: el minimo y maximo difieren mucho segun variable.


#---------------------------------------------------------------------------------------------
# Hacer un gra???co de cajas (boxplot) donde se pueda ver la informacion anterior de forma gra???ca.


boxplot(diabetes_sin_na)
boxplot(diabetes_sin_na[-2]) #excluyendo variable SEX que son factores

# En los graficos de cajas se puede ver por variable información anterior de forma grafica.




#-------------------------------------------------------------------------------------------------------------------------
# Calcular la media para las ???las que tienen SEX=M y la media para las ???las que tienen SEX=F, utilizando la funcion tapply.

sapply(diabetes_sin_na[ , -2], tapply, diabetes_sin_na$SEX,mean)

# Tambien podemos obtener las medias para cada variable por separado

tapply(diabetes_sin_na$AGE,diabetes_sin_na$SEX,mean)
tapply(diabetes_sin_na$BMI,diabetes_sin_na$SEX,mean)
tapply(diabetes_sin_na$BP,diabetes_sin_na$SEX,mean)
tapply(diabetes_sin_na$S1,diabetes_sin_na$SEX,mean)
tapply(diabetes_sin_na$S2,diabetes_sin_na$SEX,mean)
tapply(diabetes_sin_na$S3,diabetes_sin_na$SEX,mean)
tapply(diabetes_sin_na$S4,diabetes_sin_na$SEX,mean)
tapply(diabetes_sin_na$S5,diabetes_sin_na$SEX,mean)
tapply(diabetes_sin_na$S6,diabetes_sin_na$SEX,mean)
tapply(diabetes_sin_na$Y,diabetes_sin_na$SEX,mean)




#Calcular la correlacion de todas las variables num´ericas con la variable Y. 
#----------------------------------------------------------------------------------

cor(diabetes_sin_na[,-2],diabetes_sin_na$Y) # excluyo la segunda columna que no es numérica


# también puedo calcular cada correlacion por separado 

cor(diabetes_sin_na$AGE,diabetes_sin_na$Y)
cor(diabetes_sin_na$BMI,diabetes_sin_na$Y)
cor(diabetes_sin_na$BP,diabetes_sin_na$Y)
cor(diabetes_sin_na$S1,diabetes_sin_na$Y)
cor(diabetes_sin_na$S2,diabetes_sin_na$Y)
cor(diabetes_sin_na$S3,diabetes_sin_na$Y)
cor(diabetes_sin_na$S4,diabetes_sin_na$Y)
cor(diabetes_sin_na$S5,diabetes_sin_na$Y)
cor(diabetes_sin_na$S6,diabetes_sin_na$Y)



#-------------------------------------------------------------
# convierto los factores de la columna sexo en valores numéricos

diabetes_sin_na$SEX<- as.numeric(diabetes_sin_na$SEX)



#-----------------------------------------------------------------------------------------------------------------------
#Realizar un grafico de dispersion para las variables que tienen mas y menos correlacion con Y y comentar los resultados. 
#¿Como seria el grafco de dispersion entre dos cosas con correlacion 1?


range(abs(cor(diabetes_sin_na[,c(1,3:10)],diabetes_sin_na$Y))) # obtenemos la correlación mínima y máxima de todas las correlaciones con y
minmax <- match(range(abs(cor(diabetes_sin_na[,c(1,3:10)],diabetes_sin_na$Y))),abs(cor(diabetes_sin_na,diabetes_sin_na$Y)))  # obtenemos el índice de las columnas que tienen correlación minima y maxima
minmax # vemos los ínsices que tienen las columnas con correlación minima y maxima
min <- minmax[1]                                # indice de la variable con menos correlación con Y
max <- minmax [2]                               # indice de la variable con mas correlación con Y
plot(diabetes_sin_na[ ,min],diabetes_sin_na$Y)  # grafico de la dispersion de la variable con la correlacon minima con y
plot(diabetes_sin_na[ ,max],diabetes_sin_na$Y)  # grafico de la dispersion de la variable con la correlacon maxima con y

plot(diabetes_sin_na$Y,diabetes_sin_na$Y)   # corelación 1 tiene y consigo mismo, el gráfico es una recta



#---------------------------------------------------------------------------------------------------------------------------------------------------------
# Definir outliers: filas para los que cualquiera de las variables está más de 3 veces MAD(median absolute deviation) por debajo o por encima de la mediana



apply(diabetes_sin_na, 2, median, na.rm = TRUE)     # calcula mediana
apply(diabetes_sin_na, 2, mad, na.rm = TRUE)        # calcula median absolute deviation (MAD)

outlier <- function(x, const=3){x < median(x) - const*mad(x) | x > median(x) + const*mad(x)} # definimos que es outlier
buscar_outlier <- apply(diabetes_sin_na[ ,-2], 2, outlier)                                   # buscar outlier en los datos


si_outliers <- diabetes_sin_na[apply(buscar_outlier, 1, any),]   # seleccionamos outlier
no_outliers <- diabetes_sin_na[!apply(buscar_outlier, 1, any),]  # seleccionamos todos menos outlier


#--------------------------------------------------------------------------------------------
# Separar los datos en dos conjuntos: entrenamiento . 70% de los datos y test 30% de los datos

test<-diabetes_sin_na[sample(nrow(diabetes_sin_na),nrow(diabetes_sin_na)*0.3, replace=FALSE), ]
entrenamiento<-diabetes_sin_na[sample(nrow(diabetes_sin_na),nrow(diabetes_sin_na)*0.7, replace=FALSE), ]


#--------------------------------------------------------------------------------------------
# Escalar los datos para que tengan media 0 y varianza 1, 
# es decir, restar a cada variable numerica su media y dividir por la desviacion tipica. 
# Calcular la media y desviacion en el conjunto de train, 
# y utilizar esa misma media y desviacion para escalar el conjunto de test.

# escalando el conjunto test:

media_test<-apply(test,2,mean)                 # calculo la media por variable
sd_test<-apply(test,2,sd)                      # calculo desviación típica
test_normal<-scale(test,media_test,sd_test)    # cescalando a la distribución normal N(0,1)

summary(test_normal)                           # veo que las medias son 0   
apply(test_normal,2,sd)                        # veo que las varianzas son 1



# escalando el conjunto entrenamiento:

media_entrenamiento<-apply(entrenamiento,2,mean)
sd_entrenamiento<-apply(entrenamiento,2,sd)
entrenamiento_normal<-scale(entrenamiento,media_entrenamiento,sd_entrenamiento)

summary(entrenamiento_normal)
apply(entrenamiento_normal,2,sd)




#--------------------------------------------------------------------------
# regresion lineal ajustada por mínimos cuadrados del conjunto entrenamiento

regresion_entrenamiento <- lm(Y ~ BMI, data=entrenamiento)
plot(regresion)



#--------------------------------------------------------------------------
# Error cuadratico medio de entrenamiento:

predicho_entrenamiento <- predict(regresion)
plot(predicho)
ecm_entrenamiento <- mean((entrenamiento-predicho)^2)


# Error cuadratico medio de test:

regresion_test <- lm(Y ~ BMI, data=test)
predicho_test <- predict(regresion_test)
ecm_test <- mean((test-predicho_test)^2)


