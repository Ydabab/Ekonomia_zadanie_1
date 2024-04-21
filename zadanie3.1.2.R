library(readxl)
library(dplyr)
library(tidyverse)
rossmann <- read_xlsx("rossmann.xlsx")
sklep101 <- rossmann %>%
  filter(sklep_id == 101) %>%
  group_by(dzien_tyg) %>%
  summarise(srednia_liczba_klientow = mean(liczba_klientow))
print(sklep101)