library(dplyr)
library(readxl)
rossmann <- read_xlsx("rossmann.xlsx")
odleglosc <- rossmann %>%
  group_by(sklep_id) %>%
  summarise(n_unique = n_distinct(sklep_konkurencja)) %>%
  filter(n_unique > 1) %>%
  pull(sklep_id)

print(odleglosc)