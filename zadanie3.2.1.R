library(readxl)
library(dplyr)
wybory <- read_xlsx("wybory2020.xlsx")
frekw <- wybory %>%
  filter(Frekwencja > 80)
nrow(frekw)