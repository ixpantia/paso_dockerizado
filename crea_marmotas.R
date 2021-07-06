library(dplyr)
library(tidyr)
library(readr)


set.seed(43)
datos <- tibble(
  sub_genero = c(rep("Marmota", 11), rep("Petromarmota", 4)),
  especie = c("Alaska marmot", "Alpine marmot", "Black-capped marmot",
                 "Bobak marmot", "Forest-steppe marmot",
                 "Gray marmot", "Groundhog", "Himalayan marmot",
                 "Long-tailed marmot", "Menzbier's marmot",
                 "Tarbagan marmot", "Hoary marmot", "Olympic marmot",
                 "Vancouver Island marmot", "Yellow-bellied marmot")) %>%
  mutate(cantidad = round(rpois(nrow(.), lambda = 20))) %>%
  uncount(cantidad)


write_csv(datos, "marmotas.csv")


