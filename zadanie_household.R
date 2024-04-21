library(readxl)
library(dplyr)
household<- read_xlsx("undesa_pd_2022_hh-size-composition.xlsx", sheet = 3)
print(household)