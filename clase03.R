
########################################################################################
#############################        CURSO R- BÁSICO       ############################# 
#############################          Clase 3             ############################# 
######################################################################################## 

## Coerción
# Los elementos de un vector son del mismo tipo
# Si combinamos tipos diferentes, serán coercionados al tipo más flexible dado por la jerarquia
# character <= double <= integer <= logical

vec <- c("ssl", 12, TRUE, FALSE)
vec
typeof(vec)

vec1 <- c(0.5, 2, TRUE, FALSE)
vec1
typeof(vec1)

# Las funciones +, abs, log, etc coercionan a double o integer.
######################################################################################## 

# Coerción función abs
vec <- c(3, 0.5, -6)
vec1 <- abs(vec)
typeof(vec1)
######################################################################################## 


# Coerción función +
vec1 <- c(1L, 3L, -6L)
vec2 <- c(2L, -5L, 9L)
vec3 <- vec1 + vec2
typeof(vec3)

######################################################################################## 
# Las funciones &, |, any, all, etc coercionan a logical.
# Coerción función all
vec <- c(TRUE, FALSE, FALSE, TRUE)
(vec1 <- all(vec)) # TRUE si todos sus elementos son TRUE
typeof(vec1)
######################################################################################## 

# Coerción función | 
vec1 <- c(FALSE, TRUE, TRUE, FALSE)
vec2 <- c(TRUE, TRUE, FALSE, FALSE)
(vec3 <- vec1 | vec2)
typeof(vec3)

######################################################################################## 
######################################################################################## 


## Coerción - Funciones "as"
# Para coercionar un vector a un determinado tipo, se utilizan las funciones "as"

# coerción directa: double a character
vec <- c(1.7, 5, 8.2, 15.1)
vec1 <- as.character(vec)
vec1
typeof(vec1)

# coerción directa: logical a character
vec <- c(FALSE, TRUE, FALSE, TRUE, TRUE) 
vec1 <- as.character(vec)
vec1

# coerción directa: logical a double
vec <- c(FALSE, TRUE, FALSE, TRUE, TRUE) 
vec1 <- as.double(vec)
vec1
# TRUE -> 1
# FALSE -> 0

sum(vec) # número total de TRUEs 
mean(vec) # proporción de TRUEs


# coerción indirecta: character a double
vec <- c("15", "Sin Info", "25", "-")
vec1 <- as.double(vec)
vec1
#NAs introduced by coercion

# coerción indirecta: character a logical
vec <- c("FALSE", "TRUE", "Sin Info", "-", "TRUE") 



vec1 <- as.logical(vec)
vec1
#NAs introduced by coercion

# coerción indirecta: double a logical
vec <- c(1, 0, 17, 3.5, 0)
vec1 <- as.logical(vec)
vec1
# == 0 -> FALSE
# != 0 $\rightarrow$ TRUE

######################################################################################## 

## Vectores anidados
# Los vectores atómicos pueden ser anidados
c(1, c(2, c(3,4)))

c(1, 2, 3, 4)

######################################################################################## 

## 2. Listas
# Una lista puede contener elementos de cualquier tipo y de distinta longitud. 
lst <- list(c(1, 2), c(TRUE), c("a", "b", "c"))
lst

lst <- list(1:3, c("Source", "Stat", "Lab"), c(TRUE, FALSE), c(1.3, 4.5))
typeof(lst)
is.atomic(lst)
# probamos si lst es una lista
is.list(lst)

## Coerción
# coerción del vector lst a una lista
lst <- c("ssl", 4, 0.5)
as.list(lst)

# coerción de lista a vector (reglas de coerción)
lst <- list(1:3, c("Source", "Stat", "Lab"), c(TRUE, FALSE), c(1.3, 4.5))
unlist(lst)
######################################################################################## 
# Introducción al lenguaje markdown
#Tarea
## Realizar un informe explicando detalladamente los pasos que se realizó en la tarea 2 en
##un archivo .Rmd
##Adicionalmente
#### Agregar dos vectores anidados
#### agregar Dos listas
#### Realizar la corecion de un vector tipo double a tipo integer
######################################################################################## 
