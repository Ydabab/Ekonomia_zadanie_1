library(dplyr)
library(readxl)
rossmann <- read_xlsx("rossmann.xlsx")
archiwum <- read_xls("archiwum_tab_a_2014.xls")
kurs <- archiwum %>%
  group_by(data, `1 EUR`) %>%
  summarise()

wyniki_sprzedazy <- rossmann %>%
  group_by(data, sprzedaz)

#Źle wczytuje datę z pliku NBP