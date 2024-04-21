library(readxl)
library(dplyr)
library(tidyverse)
rossmann <- read_xlsx("rossmann.xlsx")
typ <- rossmann %>%
  group_by(sklep_typ) %>%
  summarise(med = median(sprzedaz))
print(typ)