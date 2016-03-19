
########################################################################################
#############################        CURSO R- BÁSICO       ############################# 
#############################          Clase 1             ############################# 
######################################################################################## 



## **INSTALACIÓN DE LIBRERÍAS**
# Instalación desde el repositorio CRAN
install.packages('nombre_paquete', dependencies=TRUE)
install.packages('bootstrap')
# Instalación de múltiples paquetes
paquete <- c("ggplot2","data.table")
lapply(seq_along(paquetes), function(i){
 install.packages(paquetes[[i]])
 })


########################################################################################


## **ACTUALIZACIÓN DE LIBRERÍAS**
# Paquetes instalados
installed.packages()
#Informacion de plataforma, version y paquetes
sessionInfo()
# Informacion sobre paquetes
library(help='ggplot2')
# Funciones library y  require
library('ggplot2')
require('ggplot2') 
# Cargan y agregan  los paquetes añadidos
# Citaciones de paquetes
citation("ggplot2")
# Actualizamos paquetes
update.packages()
# Actualizamos R por medio del paquete installr
install.packages('installr', dependencies = TRUE)
library('installr')
updateR()
# Eliminación de paquetes
 remove.packages("nombre_paquete", "directorio")

 
########################################################################################
 
 
 
## **PARÁMETROS EN RSTUDIO**
# Existen parémtros que se pueden modificar
getOption("width")
getOption("digits")
# Área de impresión aumentada
options(width=75)
# Área de impresión disminuida
options(width=45)
runif(10)
#Resultados con 2 decimales
options(digits=2)
rexp(10)
# Resultados con 8 decimales
options(digits=8)
rnorm(10)


########################################################################################



## **DIRECTORIO DE TRABAJO**
# Directorio de trabajo actual
getwd()
# Cambiar directorio de trabajo
setwd("C:/Users/ZONE TECHNOLOGY/Desktop/R basico")
#Enlista los archivos en el directorio
list.files()



########################################################################################


## **MANTENIMIENTO DE ARCHIVOS**
#Crear una nueva carpeta en mi directorio de trabajo
dir.create("CARPETA")
setwd("C:/Users/ZONE TECHNOLOGY/Desktop/R basico/CARPETA")
# Crear un nuevo archivo de R 
file.create("nombre_nuevo_archivo.R")
#Editamos el archivo creado
file.edit("nombre_nuevo_archivo.R")
#Verificar si un archivo ya existe 
file.exists("nombre_nuevo_archivo.R")
#Información del archivo
file.info("nombre_nuevo_archivo.R")
# Crear una copia de un  archivo 
file.copy("nombre_nuevo_archivo.R", "nombre_copia_archivo.R")
#Editar el nombre de un archivo
file.rename("nombre_nuevo_archivo.R", "nuevo_nombre.R")
#Eliminar un archivo
file.remove("nombre_nuevo_archivo.R")



########################################################################################
##Ejercicio
# Verificar el directorio de trabajo actual
# Crear una nueva carpeta en el directorio de trabajo actual llamada "Clase01"
# Configurar la carpeta "Clase01" como el nuevo directorio de trabajo
# Crear un nuevo archivo llamado "clase01.R"
# Editar el archivo "clase01.R" con lo siguiente:
      # Instalación del paquete "knitr"
      # Crear 20 números aleatorios de la función noramal 
          # rnorm(20)
      # Aumentar el área de impresión a 100
      # Disminuir el número de decimales a 1
      # Crear 20 números aleatorios de la función noramal 
          # rnorm(20)
# Crear una copia del archivo "clase01.R" llamada "clase01copia.R"
# Editar el archivo "clase01copia.R" agregando lo siguiente:
      # Disminuir el área de impresión a 40
      # Aumentar el número de decimales a 5
      # Crear 30 números aleatorios de la función noramal 
          # rnorm(30)
#Cambiar de nombre al archivo "clase01copia.R" a "ejemplo"
#Eliminar el archivo "clase01.R" 

########################################################################################
