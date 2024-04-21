library(readxl)
library(dplyr)
library(tidyverse)
rossmann <- read_xlsx("rossmann.xlsx")
asortyment <- rossmann %>%
  filter(data == as.Date("2014-02-25") & sklep_asort == "Rozszerzony")
nrow(asortyment)
  