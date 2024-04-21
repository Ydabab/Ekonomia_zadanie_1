library(readxl)
library(dplyr)
wybory <- read_xlsx("wybory2020.xlsx")
wojewodztwa <- wybory %>%
  group_by(Województwo) %>%
  summarise(srednia_frekwencja = mean(Frekwencja))
print(wojewodztwa)