datos <- read.csv("baloncesto.csv")
View(datos) #se abrira una nueva pestaña 
muestra <- datos$resultado
print(muestra)
recuentos <- table(muestra)
print(recuentos) #es el recuento de todos los aciertos y los fallos de la tabla
proporciones <- prop.table(recuentos)
proporciones #otra manera de pintar las proporciones
porcentajes <- 100*proporciones
porcentajes
library(ggplot2)
library(ggplot2)
ggplot(
  data = datos,
  mapping = aes(x = resultado)
) +
  geom_bar()
ggplot(
  data = datos,
  mapping = aes(x = resultado)
) +
  geom_bar(fill="#FF9999") +
  xlab("Resultado") +
  ylab("Recuento") +
  coord_flip()
binom.test(
  x = 28,
  n = 50,
  p = 0.75,
  alternative = "less"
)
pbinom(28, 50, 0.75)
