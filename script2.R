library(ggplot2) #da error porque no estas instalado (hay que ponerlo cada vez que lo queramos utilizar)
install.packages("ggplot2") #instalo el paquete ggplot2  (lo instala, solo hace falta una vez)

library(ggplot2)

x <- 2 #defino la varible y le doy el valor de 2

x^2-3 #referencio la variable obtenienddo 2^2-3 =1

y <- x^2-3 # guardo en la variable y el resultado de antes

print(y) # muestra el valor de y
y # muestra el valor guardado en la varibale y (instruccion equivalente)

# cargar la hoja de datos 'mtcars'
data(mtcars)

# ver (imprimir) mtcars
# -> salida en consola
mtcars
# ver mtcars como una hoja de cálculo o matriz
# -> salida en pestaña del panel de scripts
View(mtcars)

?mtcars #para saber mas sobre la hoja de calculo

# peso (sexta variable)
# del 'Hornet Sportabout' (quinto automóvil)
mtcars[5,6] #se imprime lo que hay en la tabla en la fila 5 columna 6 

# Todas las características
# del 'Hornet Sportabout' (quinto automóvil)
mtcars[5,] #se deja vacío el campo de la columna y asi se imprime al fila completa 

# Peso ('wt', sexta variable)
# de todos los automóviles
mtcars[,6] #Si dejo vacía la casilla de la fila se imprime toda la columna wt

#Para imprimir una variable en lugar de usar los indices es mas comodo hacer uso de mtcars$wt
mtcars$wt

pesos <- mtcars$wt
mean(pesos)
sd(pesos)
## [1] 3.217
## [1] 0.9785

