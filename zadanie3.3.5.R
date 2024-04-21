library(readxl)
library(tidyverse)
library(dplyr)
Mistrzostwa <- read_xlsx("WorldCupMatches.xlsx")
polowa_goscie <- Mistrzostwa %>%
  summarise(wygrana_gosci = (`Away Team Goals` > `Home Team Goals` & `Half-time Home Goals` > `Half-time Away Goals`)) %>%
  filter(wygrana_gosci == TRUE)

polowa_gospodarze <- Mistrzostwa %>%
  summarise(wygrana_gospodarzy = `Home Team Goals` > `Away Team Goals` & `Half-time Away Goals` > `Half-time Home Goals`) %>%
  filter(wygrana_gospodarzy == TRUE)

wynik <- nrow(polowa_goscie) + nrow(polowa_gospodarze)
print(wynik)