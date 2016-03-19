########################################################################################
#############################        CURSO R- BÁSICO       ############################# 
#############################          Clase 2             ############################# 
######################################################################################## 

## Estructuras de Datos

########################################################################################

## Vectores
## 1. Vectores atómicos
vec <- c(1, 2)
vec

## Elementos de un vector atómico
# La i-ésima componente de un vector se obtiene mediante vec[i]

vec <- c(6, 1, 3, 6, 10, 5)
vec
vec[5]

# Para seleccionar varios elementos utilizamos la función c().
vec <- c(6, 1, 3, 6, 10, 5)
vec

# Elementos de la posición 2, 4, 6
vec[c(2, 4, 6)]

# Eliminamos elementos antecediendo el signo -

vec[-c(2)]
vec[-c(1, 6)]

# TRUE, FALSE también permiten obtener ciertos elementos:
vec <- c(6, 1, 3, 6, 10, 5)
vec
# elementos de la posición 2, 4, 6
vec[c(FALSE, TRUE, FALSE, TRUE, FALSE, TRUE)]

########################################################################################

## Tipos de vectores atómicos
# Vector double
dbl_vec <- c(1, 2, -1, 8, 15)
dbl_vec
# Vector entero
int_vec <- c(3L, 7L, 1L, 14L, 21L) # sufijo L para vector entero
int_vec
# Vector lógico
log_vec <- c(FALSE, TRUE, F, T, TRUE, F) # TRUE y FALSE (T, F) para vector lógico
log_vec
# Vector caracter
chr_vec <- c("Source", "Stat", "Lab", "Ec")
chr_vec

########################################################################################

## Tipos y Tests
# Ejemplo de un vector double

dbl_vec <- c(1, 2, -1)
dbl_vec

typeof(dbl_vec)
is.double(dbl_vec)
is.atomic(dbl_vec)

# Ejemplo de un vector integer
int_vec <- c(3L, 7L, 1L)
int_vec

typeof(int_vec)
is.integer(int_vec)
is.atomic(int_vec)

########################################################################################

## Función is.numeric().
# Retorna TRUE para vectores double e integer:

dbl_vec <- c(1, 2, -1.2)
dbl_vec
is.numeric(dbl_vec)

int_vec <- c(3L, 7L, 1L)
int_vec
is.numeric(int_vec)

########################################################################################

#Tarea
# Generar 10000 observaciones de la sig manera
### 100 de la dist. uniforme (0,1)
### 350 de la dist. uniforme (10,20)
### 300 exponencial. 
### 250 biomial con size=5, p=0.5
# hacer el histograma de todas las observaciones
# hacer el histograma y calcular la media de las primeras 100 observaciones(media1)
# Calcular la desv. est. desde la obs 125 hasta 
# la obs 500
#calcular la media desde la obs 50 hasta la obs 102(media2)
# calcular la diferencia entre la media 1 y la media dos
# analizar el tipo de dato de vectores aleatorios(generados por uds mismo)
##### 10 vectores######
# Realizar la unión de 2 vectores ("clases diferentes") (vector1)
### Cuál es la clase del vector 1?
### generar un vector del 5 al 1000 (vector2)
### generar un vector del 20 al 1000 con saltos de 5 (vector)
### realizar la suma de todos los elementos del vector2
### realizar la suma de todos los primeros 20 elementos del vector3
######################################################################################## 
