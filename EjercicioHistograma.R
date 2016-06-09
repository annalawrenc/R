

# Ejercicio Histograma

# 1. Generar 10000 numeros aleatorios con una distribucion normal estandar (media 0 y varianza 1).**
  
#  Genero 10000 números aleatorios y los asigno a una variable:
  
      numeros<- rnorm(10000)

  

# 2. Realizar un histograma de los valores anteriores. ¿Cual es el menor y mayor valor generado?.**
    
       hist(numeros)
  
  
# Los números minimo y máximo obtengo con ayuda de la función min() y max().
  
       min(numeros)

       max(numeros)

  
# 3. Generar los valores de la distribucion normal teoricos en el intervalo anterior utilizando la funcion dnorm().**
    
    
       dnorm(numeros)
  
  
# 4. Al histograma anterior, superponer una curva con la funcion de densidad te´orica calculada. ¿Se aproxima el histograma al valor teorico?**
    
    
#    Utilizo una función de bajo nivel para sobreponer la densidad encima del histograma.
  
  
      lines(seq(min(numeros),max(numeros),length.out=10000),dnorm(seq(min(numeros),max(numeros),length.out=10000)))
  
  
#  El resultado se ve muy mal, la función de la densidad no se aprecia.
  
# 5. Ver el parametro probability de la funcion hist y volver a generar el histograma cambiando su valor. ¿Se aproxima ahora a la funcion de densidad teorica?.**
    
       help(hist)
  
  
#  Resulta que dependiendo del parametro probability la función hist() pinta las frecuencias o la densidad.
#  Al tener muchas observaciones frecuencia (los count's de las observaciones) es mayor y la escala del histograma es muy diferente de la escala de la función de la densidad.
                                            
 # Pinto el histograma con probability = T para que refleje probabilidades en lugar de las frecuencias.
                                            
      hist(numeros, probability = T)
                                            
                                          
                                            
# Se ve que la escala ya es menor y la descripción del grafico dice "densidad".
                                            
# Ahora vuelvo a pintar la función de la densidad:
                                            
      lines(seq(min(numeros),max(numeros),length.out=10000),dnorm(seq(min(numeros),max(numeros),length.out=10000)))
      
# Ahora la forma del histograma se aproxima a la densidad teorica.                                          
                                            