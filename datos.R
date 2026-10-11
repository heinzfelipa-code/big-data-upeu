library(tidyverse)
set.seed(724)
tiempo <- seq(
  as.POSIXct("2026-01-01 06:00"),
  as.POSIXct("2026-01-03 22:00"),
  by = "3 min"
)
puntos <- c("Centro", "Norte", "Sur", "Oriente", "Occidente")