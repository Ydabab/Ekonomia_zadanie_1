library(readxl)
library(dplyr)
Mistrzostwa <- read_xlsx("WorldCupMatches.xlsx")
miasto <- Mistrzostwa %>%
  group_by(City) %>%
  summarise(liczebnosc = n()) %>%
  arrange(desc(liczebnosc)) %>%
  slice(1)

print(miasto)