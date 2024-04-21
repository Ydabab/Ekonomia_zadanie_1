library(readxl)
library(dplyr)
wybory <- read_xlsx("wybory2020.xlsx")
poznan <- wybory %>%
  filter(Gmina == "m. Poznań")
nrow(poznan)