datos <-read.csv("mados.csv")
View(datos)
datos <- read.csv("mandos.csv")
muestra <- datos$alcance
muestra

mean(muestra)##se calcula la media ritmetica de los elementos de la muestra (que es el vector)
library(ggplot2)

##para trocear el eje x en en varios intervalos de la misma longitud y dibuja una barra de altura igual al numero de observaciones
ggplot(
  data = datos,
  mapping = aes(x = alcance)
) +
  geom_histogram(
    binwidth = 5,
    colour = "black",
    fill = "#F98D08"
  ) +
  xlab("Alcance (metros)") +
  ylab("Recuento") 

##REpresentamos los datos mediante un diagrama de caja y bigotes 
ggplot(
  data = datos,
  mapping = aes(
    x = factor(1),
    y = alcance
  )
) +
  geom_boxplot(
    fill = "#08C9F9",
    outlier.colour = "red",
    outlier.size = 2,
    outlier.shape = 8
  ) +
  xlab("") +
  ylab("Alcance (metros)") +
  scale_x_discrete(breaks=NULL)
#en el dibujo la line ainferior es el primer cuartil, la segunda linea que es la linea de la mitad es la mediana y la de arriba del todo es el tercer cuartil

quantile(muestra, probs=c(0.25, 0.5, 0.75))

#el primer cuartil sale 44.55, el segundo cuartil 49.5 y el tercer 54.6 

sort(muestra)


t.test(
  x = muestra,
  mu = 45,
  alternative = "greater"
)


