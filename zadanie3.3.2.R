library(readxl)
library(dplyr)
Mistrzostwa <- read_xlsx("WorldCupMatches.xlsx")
bramki <- Mistrzostwa %>%
  summarise(liczba_bramek = `Home Team Goals` + `Away Team Goals`) %>%
  arrange(desc(liczba_bramek)) %>%
  slice(1)

print(bramki)