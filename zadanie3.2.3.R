library(readxl)
library(dplyr)
wybory <- read_xlsx("wybory2020.xlsx")
typ_obszaru <- wybory %>%
  group_by(`Typ obszaru`) %>%
  summarise()
nrow(typ_obszaru)