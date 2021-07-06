# Lee datos desde el volumen /script en el contenedor
datos_marmotas <- read.csv("/script/marmotas.csv")

# Realiza el conteo
conteo_sub_genero <- as.data.frame(table(datos_marmotas$especie))

# Re nombra columnas
colnames(conteo_sub_genero) <- c("sub_genero", "cantidad_marmotas")

# Guarda el conteo de marmotas en el volumen /script en el contenedor
write.csv(conteo_sub_genero, "/script/conteo_marmotas.csv")
