library(tidyverse)
filmy <- read_csv("http://wawrowski.edu.pl/data/movies.csv")
filmy %>% 
  mutate(year_decade=cut(year, seq(1920, 2020, 10), include.lowest=T, dig.lab=4)) %>% 
  ggplot(aes(x=duration, y=year_decade)) +
  geom_boxplot() +
  xlab("Długość filmu (w minutach)") +
  ylab("Dekada") +
  theme_minimal()