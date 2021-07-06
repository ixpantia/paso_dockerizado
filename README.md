# Paso dockerizado

Ejemplo de un paso dentro de un dataducto que corre en docker.

# Pasos para reproducir el ejemplo

## Requisitos

- Es necesario tener instalado Docker en nuestra computadora. 

## Pasos prácticos

1. Luego de esto abrimos una nueva terminal y vamos a la carpeta raíz de este 
repositorio.

2. Hacemos el build del Dockerfile con:

```
docker build -t paso_dockerizado .
```

3. Arrancamos el contenedor con:

```
docker run --rm --name=paso_dockerizado -v  <path_computadora>:/script paso_dockerizado
```

Donde `<path_computadora>` es el path completo en tu computadora a la carpeta de
este repositorio. Si usa Windows el path completo se debe ver incluir `//c` al 
inicio del mismo tal y como se muestra en el siguiente ejemplo: 
`//c/Users/Juan/Documents/escalar_R`

