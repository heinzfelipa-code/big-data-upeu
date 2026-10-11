# EDA básico
library(tidyverse)

# 1. Estructura y resumen
glimpse(datos)
summary(datos)

# 2. Valores faltantes
colSums(is.na(datos))

# 3. Estadísticos principales
datos %>%
  summarise(
    vehiculos_prom = mean(vehiculos),
    vehiculos_max = max(vehiculos),
    velocidad_prom = mean(velocidad_kmh),
    velocidad_min = min(velocidad_kmh)
  )

# 4. Tráfico por hora
datos %>%
  group_by(hora) %>%
  summarise(vehiculos_prom = mean(vehiculos))