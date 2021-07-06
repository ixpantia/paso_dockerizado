# Imagen base de R 4.1.0
FROM rocker/r-base:4.1.0

# Hacer update y upgrade del sistema
RUN apt-get update -qq && apt-get install -y

# Copia el script necesario
COPY conteo_marmotas.R /conteo_marmotas.R

# Crea carpeta para el volumen
RUN mkdir /script

# Corre el script de R para contar marmotas
CMD ["Rscript", "/conteo_marmotas.R"]
