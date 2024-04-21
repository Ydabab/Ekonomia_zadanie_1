library(readxl)
library(dplyr)
wybory <- read_xlsx("wybory2020.xlsx")
kandydaci1 <- wybory %>%
  group_by(Gmina) %>%
  summarise(roznica = abs(sum(`Andrzej Sebastian DUDA`) - sum(`Rafał Kazimierz TRZASKOWSKI`))) %>%
  arrange(desc(roznica)) %>%
  slice(1)

print(kandydaci1)