library(readxl)
library(dplyr)
Mistrzostwa <- read_xlsx("WorldCupMatches.xlsx")
widzowie <- Mistrzostwa %>%
  summarise(liczba_widzow = mean(Attendance, na.rm = TRUE))

print(widzowie)