
#**Ejercicios mtcars**

**1. Previsualizar el contenido con la funcion head().**

Previsualizo los 100 primeras filas de mtcars:

	head(mtcars,n=100)

 	                    mpg cyl  disp  hp drat    wt  qsec vs am gear carb
	Mazda RX4           21.0   6 160.0 110 3.90 2.620 16.46  0  1    4    4
	Mazda RX4 Wag       21.0   6 160.0 110 3.90 2.875 17.02  0  1    4    4
	Datsun 710          22.8   4 108.0  93 3.85 2.320 18.61  1  1    4    1
	Hornet 4 Drive      21.4   6 258.0 110 3.08 3.215 19.44  1  0    3    1
	Hornet Sportabout   18.7   8 360.0 175 3.15 3.440 17.02  0  0    3    2
	Valiant             18.1   6 225.0 105 2.76 3.460 20.22  1  0    3    1
	Duster 360          14.3   8 360.0 245 3.21 3.570 15.84  0  0    3    4
	Merc 240D           24.4   4 146.7  62 3.69 3.190 20.00  1  0    4    2
	Merc 230            22.8   4 140.8  95 3.92 3.150 22.90  1  0    4    2
	Merc 280            19.2   6 167.6 123 3.92 3.440 18.30  1  0    4    4
	Merc 280C           17.8   6 167.6 123 3.92 3.440 18.90  1  0    4    4
	Merc 450SE          16.4   8 275.8 180 3.07 4.070 17.40  0  0    3    3
	Merc 450SL          17.3   8 275.8 180 3.07 3.730 17.60  0  0    3    3
	Merc 450SLC         15.2   8 275.8 180 3.07 3.780 18.00  0  0    3    3
	Cadillac Fleetwood  10.4   8 472.0 205 2.93 5.250 17.98  0  0    3    4
	Lincoln Continental 10.4   8 460.0 215 3.00 5.424 17.82  0  0    3    4
	Chrysler Imperial   14.7   8 440.0 230 3.23 5.345 17.42  0  0    3    4
	Fiat 128            32.4   4  78.7  66 4.08 2.200 19.47  1  1    4    1
	Honda Civic         30.4   4  75.7  52 4.93 1.615 18.52  1  1    4    2
	Toyota Corolla      33.9   4  71.1  65 4.22 1.835 19.90  1  1    4    1
	Toyota Corona       21.5   4 120.1  97 3.70 2.465 20.01  1  0    3    1
	Dodge Challenger    15.5   8 318.0 150 2.76 3.520 16.87  0  0    3    2
	AMC Javelin         15.2   8 304.0 150 3.15 3.435 17.30  0  0    3    2
	Camaro Z28          13.3   8 350.0 245 3.73 3.840 15.41  0  0    3    4
	Pontiac Firebird    19.2   8 400.0 175 3.08 3.845 17.05  0  0    3    2
	Fiat X1-9           27.3   4  79.0  66 4.08 1.935 18.90  1  1    4    1
	Porsche 914-2       26.0   4 120.3  91 4.43 2.140 16.70  0  1    5    2
	Lotus Europa        30.4   4  95.1 113 3.77 1.513 16.90  1  1    5    2
	Ford Pantera L      15.8   8 351.0 264 4.22 3.170 14.50  0  1    5    4
	Ferrari Dino        19.7   6 145.0 175 3.62 2.770 15.50  0  1    5    6
	Maserati Bora       15.0   8 301.0 335 3.54 3.570 14.60  0  1    5    8
	Volvo 142E          21.4   4 121.0 109 4.11 2.780 18.60  1  1    4    2

Puedo elegir las filas que no quiero que se muestren con ayuda del parámetro negativo.
En este caso se muestran todas (dado que hay mas de 100 filas, sin las dos últimas).


	head(mtcars,n=-2)


	                     mpg cyl  disp  hp drat    wt  qsec vs am gear carb
	Mazda RX4           21.0   6 160.0 110 3.90 2.620 16.46  0  1    4    4
	Mazda RX4 Wag       21.0   6 160.0 110 3.90 2.875 17.02  0  1    4    4
	Datsun 710          22.8   4 108.0  93 3.85 2.320 18.61  1  1    4    1
	Hornet 4 Drive      21.4   6 258.0 110 3.08 3.215 19.44  1  0    3    1
	Hornet Sportabout   18.7   8 360.0 175 3.15 3.440 17.02  0  0    3    2
	Valiant             18.1   6 225.0 105 2.76 3.460 20.22  1  0    3    1
	Duster 360          14.3   8 360.0 245 3.21 3.570 15.84  0  0    3    4
	Merc 240D           24.4   4 146.7  62 3.69 3.190 20.00  1  0    4    2
	Merc 230            22.8   4 140.8  95 3.92 3.150 22.90  1  0    4    2
	Merc 280            19.2   6 167.6 123 3.92 3.440 18.30  1  0    4    4
	Merc 280C           17.8   6 167.6 123 3.92 3.440 18.90  1  0    4    4
	Merc 450SE          16.4   8 275.8 180 3.07 4.070 17.40  0  0    3    3
	Merc 450SL          17.3   8 275.8 180 3.07 3.730 17.60  0  0    3    3
	Merc 450SLC         15.2   8 275.8 180 3.07 3.780 18.00  0  0    3    3
	Cadillac Fleetwood  10.4   8 472.0 205 2.93 5.250 17.98  0  0    3    4
	Lincoln Continental 10.4   8 460.0 215 3.00 5.424 17.82  0  0    3    4
	Chrysler Imperial   14.7   8 440.0 230 3.23 5.345 17.42  0  0    3    4
	Fiat 128            32.4   4  78.7  66 4.08 2.200 19.47  1  1    4    1
	Honda Civic         30.4   4  75.7  52 4.93 1.615 18.52  1  1    4    2
	Toyota Corolla      33.9   4  71.1  65 4.22 1.835 19.90  1  1    4    1
	Toyota Corona       21.5   4 120.1  97 3.70 2.465 20.01  1  0    3    1
	Dodge Challenger    15.5   8 318.0 150 2.76 3.520 16.87  0  0    3    2
	AMC Javelin         15.2   8 304.0 150 3.15 3.435 17.30  0  0    3    2
	Camaro Z28          13.3   8 350.0 245 3.73 3.840 15.41  0  0    3    4
	Pontiac Firebird    19.2   8 400.0 175 3.08 3.845 17.05  0  0    3    2
	Fiat X1-9           27.3   4  79.0  66 4.08 1.935 18.90  1  1    4    1
	Porsche 914-2       26.0   4 120.3  91 4.43 2.140 16.70  0  1    5    2
	Lotus Europa        30.4   4  95.1 113 3.77 1.513 16.90  1  1    5    2
	Ford Pantera L      15.8   8 351.0 264 4.22 3.170 14.50  0  1    5    4
	Ferrari Dino        19.7   6 145.0 175 3.62 2.770 15.50  0  1    5    6


**2. Mirar el n ´umero de filas y columnas con nrow() y ncol().**

Número de filas:


	nrow(mtcars)

	[1] 32

Número de columnas:


	ncol(mtcars)

	[1] 11

**3. Crear un nuevo data frame con los modelos de coche que consumen menos de 15 millas/galon.**

	mtcars15 <- mtcars [mtcars$mpg < 15,]

	mtcars15

	                     mpg cyl disp  hp drat    wt  qsec vs am gear carb
	Duster 360          14.3   8  360 245 3.21 3.570 15.84  0  0    3    4
	Cadillac Fleetwood  10.4   8  472 205 2.93 5.250 17.98  0  0    3    4
	Lincoln Continental 10.4   8  460 215 3.00 5.424 17.82  0  0    3    4
	Chrysler Imperial   14.7   8  440 230 3.23 5.345 17.42  0  0    3    4
	Camaro Z28          13.3   8  350 245 3.73 3.840 15.41  0  0    3    4



**4. Ordenar el data frame anterior por disp.**

	mtcars15[order(mtcars15[,"disp"]),]

	                     mpg cyl disp  hp drat    wt  qsec vs am gear carb
	Camaro Z28          13.3   8  350 245 3.73 3.840 15.41  0  0    3    4
	Duster 360          14.3   8  360 245 3.21 3.570 15.84  0  0    3    4
	Chrysler Imperial   14.7   8  440 230 3.23 5.345 17.42  0  0    3    4
	Lincoln Continental 10.4   8  460 215 3.00 5.424 17.82  0  0    3    4
	Cadillac Fleetwood  10.4   8  472 205 2.93 5.250 17.98  0  0    3    4


**5. Calcular la media de las marchas (gear) de los modelos del data frame anterior.**

Se puede hacer la media de varias maneras. 

Ejemplo 1

	sum(mtcars15["gear"])/nrow(mtcars15["gear"])
	[1] 3

Ejemplo 2

	mean(mtcars25[, "gear"])
	[1] 3

Ejemplo 3

	attach(mtcars15)
	mean(gear)

	[1] 3
	
	detach(mtcars15)

**6. Cambiar los nombres de las variables del data frame a var1, var2, ..., var11.**

**Pista: Mirar la documentaci ´on de la funci ´on paste y usarla para generar el vector (“var1”, “var2”, ..., “varN”) donde N es el n ´umero de variables del data frame.**

Compruebo los nombres de las variables del data frame mtcars15:

	names(mtcars15) 	
	[1] "mpg"  "cyl"  "disp" "hp"   "drat" "wt"   "qsec" "vs"   "am"   "gear" "carb"

Creo un vector que tenga el mismo número de elementos que columnas tiene mtcars15 con nombres Var+número de columna.
	
	nomcol<- paste0("Var",c(1:ncol(mtcars15)))
	nomcol
 	[1] "Var1"  "Var2"  "Var3"  "Var4"  "Var5"  "Var6"  "Var7"  "Var8"  "Var9"  "Var10" "Var11"

Asigno como nombres de las variables de mtcars15 los valores del vector.

	names(mtcars15)<- nomcol

Ahora compruebo los nombres de las variables de mtcars15:
	
	names(mtcars15)
 	[1] "Var1"  "Var2"  "Var3"  "Var4"  "Var5"  "Var6"  "Var7"  "Var8"  "Var9"  "Var10" "Var11"


#**Ejercicios iris**

**1. ¿Como est ´a estructurado el data frame? (utilizar las funciones str() y dim()).**

La función dim() proporciona información sobre número de elementos y número de variables.

	dim(iris)
	[1] 150   5

El data frame tiene 5 dimensiones y en cada dimensión 150 elementos.

La función str() proporciona información sobre el número de elementos, número de variables y tipo de las variables.

	 str(iris)

	'data.frame':	150 obs. of  5 variables:
 	$ Sepal.Length: num  5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
 	$ Sepal.Width : num  3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
 	$ Petal.Length: num  1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
	$ Petal.Width : num  0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
	$ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...

El data frame tiene 150 elementos (observaciones) y 5 variables. Los datos de las 4 primaras dimensiones son numéricos y los de la última dimensión son factores de3 niveles.

**2. ¿De que tipo es cada una de las variables del data frame?.** 

El tipo de cada una de las variables se ve en el resultato de str(iris). 
También lo puedo ver ejecutando: 

	sapply(iris,class)

	Sepal.Length  Sepal.Width Petal.Length  Petal.Width      Species 
	   "numeric"    "numeric"    "numeric"    "numeric"     "factor" 


**3. Utilizar la funcion summary() para obtener un resumen de los estadisticos de las variables.**

	summary(iris)

	  Sepal.Length    Sepal.Width     Petal.Length    Petal.Width          Species  
	 Min.   :4.300   Min.   :2.000   Min.   :1.000   Min.   :0.100   setosa    :50  
	 1st Qu.:5.100   1st Qu.:2.800   1st Qu.:1.600   1st Qu.:0.300   versicolor:50  
	 Median :5.800   Median :3.000   Median :4.350   Median :1.300   virginica :50  
	 Mean   :5.843   Mean   :3.057   Mean   :3.758   Mean   :1.199                  
	 3rd Qu.:6.400   3rd Qu.:3.300   3rd Qu.:5.100   3rd Qu.:1.800                  
	 Max.   :7.900   Max.   :4.400   Max.   :6.900   Max.   :2.500 


**4. Comprobar con las funciones mean(), range(), que se obtienen los mismos valores.**

	lapply(iris[,1:4], mean)

	$Sepal.Length
	[1] 5.843333

	$Sepal.Width
	[1] 3.057333

	$Petal.Length
	[1] 3.758

	$Petal.Width
	[1] 1.199333

Vemos que la media coincide para cada columna con summary(iris).

	lapply(iris[,1:4], range)

	$Sepal.Length
	[1] 4.3 7.9

	$Sepal.Width
	[1] 2.0 4.4

	$Petal.Length
	[1] 1.0 6.9

	$Petal.Width
	[1] 0.1 2.5

Vemos que el valor máximo y mínimo coincide con los de summary(iris).


**5. Cambia los valores de las variables Sepal.Length Sepal.Width de las 5 primeras observaciones por NA.**

Primero hago una copia del data frame.

	iris_mod <- iris

En la copia modifico los valores:

	iris_mod[1:5,1:2] <- NA

Compruebo que están modificados:

	head(iris_mod,5)

	  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
	1           NA          NA          1.4         0.2  setosa
	2           NA          NA          1.4         0.2  setosa
	3           NA          NA          1.3         0.2  setosa
	4           NA          NA          1.5         0.2  setosa
	5           NA          NA          1.4         0.2  setosa

**6. ¿Qu ´e pasa si usamos ahora las funciones mean(), range() con las variables Sepal.Length y Sepal.Width? ¿Tiene el mismo problema la funcion summary()?**


	lapply(iris_mod[,1:4], mean)

	$Sepal.Length
	[1] NA

	$Sepal.Width
	[1] NA

	$Petal.Length
	[1] 3.758

	$Petal.Width
	[1] 1.199333

La función mean() no calcula los rangos en los que aparecen valores NA.


	lapply(iris_mod[,1:4], range)

	$Sepal.Length
	[1] NA NA

	$Sepal.Width
	[1] NA NA

	$Petal.Length
	[1] 1.0 6.9

	$Petal.Width
	[1] 0.1 2.5

Lo mismo pasa con la función range().


	summary(iris_mod)

	  Sepal.Length    Sepal.Width    Petal.Length    Petal.Width          Species  
	 Min.   :4.300   Min.   :2.00   Min.   :1.000   Min.   :0.100   setosa    :50  
	 1st Qu.:5.200   1st Qu.:2.80   1st Qu.:1.600   1st Qu.:0.300   versicolor:50  
	 Median :5.800   Median :3.00   Median :4.350   Median :1.300   virginica :50  
	 Mean   :5.877   Mean   :3.05   Mean   :3.758   Mean   :1.199                  
	 3rd Qu.:6.400   3rd Qu.:3.30   3rd Qu.:5.100   3rd Qu.:1.800                  
	 Max.   :7.900   Max.   :4.40   Max.   :6.900   Max.   :2.500                  
	 NA's   :5       NA's   :5  

La función summary() no tiene ese problema. Calcula los resultados y lista el número de NA's.


**7. Ver la documentacion de mean(), range(), etc. ¿Que parametro habria que cambiar para arreglar el problema anterior?.**

	?mean
	?range

Para excluir NA's hay que añadir rm.na=T


	lapply(iris_mod[,1:4], mean, na.rm =T)

	$Sepal.Length
	[1] 5.877241

	$Sepal.Width
	[1] 3.049655

	$Petal.Length
	[1] 3.758

	$Petal.Width
	[1] 1.199333


	lapply(iris_mod[,1:4], range, na.rm =T)

	$Sepal.Length
	[1] 4.3 7.9

	$Sepal.Width
	[1] 2.0 4.4

	$Petal.Length
	[1] 1.0 6.9

	$Petal.Width
	[1] 0.1 2.5


**8. Visto lo anterior, ¿por qu ´e es importante codificar los missing values como NA y no como 0, por ejemplo?**

Es importante porque NA's son fáciles de omitir con na.rm =T, mientras que 0 se interretaría como un valor y distorsionaría los resultados de cálculo.


**9. Eliminar los valores NA usando na.omit().**

	na.omit(iris_mod)

	    Sepal.Length Sepal.Width Petal.Length Petal.Width    Species
	6            5.4         3.9          1.7         0.4     setosa
	7            4.6         3.4          1.4         0.3     setosa
	8            5.0         3.4          1.5         0.2     setosa
	9            4.4         2.9          1.4         0.2     setosa
	10           4.9         3.1          1.5         0.1     setosa
	11           5.4         3.7          1.5         0.2     setosa
	12           4.8         3.4          1.6         0.2     setosa
	13           4.8         3.0          1.4         0.1     setosa
	14           4.3         3.0          1.1         0.1     setosa
	15           5.8         4.0          1.2         0.2     setosa
	16           5.7         4.4          1.5         0.4     setosa
	17           5.4         3.9          1.3         0.4     setosa
	18           5.1         3.5          1.4         0.3     setosa
	19           5.7         3.8          1.7         0.3     setosa
	20           5.1         3.8          1.5         0.3     setosa
	21           5.4         3.4          1.7         0.2     setosa
	22           5.1         3.7          1.5         0.4     setosa
	23           4.6         3.6          1.0         0.2     setosa
	24           5.1         3.3          1.7         0.5     setosa
	25           4.8         3.4          1.9         0.2     setosa
	26           5.0         3.0          1.6         0.2     setosa
	27           5.0         3.4          1.6         0.4     setosa
	28           5.2         3.5          1.5         0.2     setosa
	29           5.2         3.4          1.4         0.2     setosa
	30           4.7         3.2          1.6         0.2     setosa
	31           4.8         3.1          1.6         0.2     setosa
	32           5.4         3.4          1.5         0.4     setosa
	33           5.2         4.1          1.5         0.1     setosa
	34           5.5         4.2          1.4         0.2     setosa
	35           4.9         3.1          1.5         0.2     setosa
	36           5.0         3.2          1.2         0.2     setosa
	37           5.5         3.5          1.3         0.2     setosa
	38           4.9         3.6          1.4         0.1     setosa
	39           4.4         3.0          1.3         0.2     setosa
	40           5.1         3.4          1.5         0.2     setosa
	41           5.0         3.5          1.3         0.3     setosa
	42           4.5         2.3          1.3         0.3     setosa
	43           4.4         3.2          1.3         0.2     setosa
	44           5.0         3.5          1.6         0.6     setosa
	45           5.1         3.8          1.9         0.4     setosa
	46           4.8         3.0          1.4         0.3     setosa
	47           5.1         3.8          1.6         0.2     setosa
	...

**10. Calcular la media de la variable Petal.Length para cada uno de las distintas especies (Species). Pista: usar la funcion tapply().**


	tapply(iris_mod$Petal.Length,iris_mod$Species, mean, na.rm =T)

	setosa versicolor  virginica 
	1.462      4.260      5.552 

