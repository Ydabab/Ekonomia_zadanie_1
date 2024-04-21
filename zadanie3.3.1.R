library(readxl)
library(dplyr)
Mistrzostwa <- read_xlsx("WorldCupMatches.xlsx")
wlochy <- Mistrzostwa %>%
  filter(`Home Team Name` == "Italy" | `Away Team Name` == "Italy") %>%
  filter(Stage == "Final")
nrow(wlochy)