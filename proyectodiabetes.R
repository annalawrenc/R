
#leer la tabla con datos
read.table("D:/R/diabetes.data",header = TRUE)

# poner NA en los valores menores de cero
diabetes [diabetes$BMI < 0, 3] <- NA
diabetes [diabetes$BP < 0, 4] <- NA
diabetes [diabetes$S1 < 0 , 5] <- NA
diabetes [diabetes$S2 < 0 , 6] <- NA
diabetes [diabetes$S3 < 0 , 7]<- NA
diabetes [diabetes$S4 < 0 , 8]<- NA
diabetes [diabetes$S5 < 0 , 9]<- NA
diabetes [diabetes$S6 < 0 , 10]<- NA
diabetes [diabetes$Y < 0 , 11]<- NA

#elegir solo los registros completos
diabetes_sin_na <- diabetes[complete.cases(diabetes), ]

#ver tipo de las variables
str(diabetes_sin_na)

#class(diabetes_sin_na$AGE)
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


#calcular medias
summary(diabetes_sin_na)

#boxplot
boxplot(diabetes_sin_na)
boxplot(diabetes_sin_na[-2]) #excluyendo variable SEX que son factores

#medias por sexo
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


#correlación con Y

cor(diabetes_sin_na$AGE,diabetes_sin_na$Y)
cor(diabetes_sin_na$BMI,diabetes_sin_na$Y)
cor(diabetes_sin_na$BP,diabetes_sin_na$Y)
cor(diabetes_sin_na$S1,diabetes_sin_na$Y)
cor(diabetes_sin_na$S2,diabetes_sin_na$Y)
cor(diabetes_sin_na$S3,diabetes_sin_na$Y)
cor(diabetes_sin_na$S4,diabetes_sin_na$Y)
cor(diabetes_sin_na$S5,diabetes_sin_na$Y)
cor(diabetes_sin_na$S6,diabetes_sin_na$Y)

# también puedo calcular todas las correlaciones de una vez, si excluyo la segunda columna que no es numérica
cor(diabetes_sin_na[,-2],diabetes_sin_na$Y)

#los graficos de dispersión

plot(diabetes_sin_na$S2,diabetes_sin_na$Y) # la variable con menos correlación con Y - puntos mas dispersos
plot(diabetes_sin_na$BMI,diabetes_sin_na$Y) # la variable con mas correlación con Y - puntos menos dispersos
plot(diabetes_sin_na$Y,diabetes_sin_na$Y) # corelación 1 tiene y consigo mismo, el gráfio es una recta

#convierto los factores de la columna sexo en valores numéricos
diabetes_sin_na$SEX<- as.numeric(diabetes_sin_na$SEX)

#diabetes [diabetes$SEX == "F", 2]

#Definir outliers: filas para los que cualquiera de las variables está más de 3 veces MAD(median absolute deviation) por debajo o por encima de la mediana

apply(diabetes, 2, median, na.rm = TRUE) #calcula mediana
apply(diabetes, 2, mad, na.rm = TRUE) # calcula median absolute deviation (MAD)


