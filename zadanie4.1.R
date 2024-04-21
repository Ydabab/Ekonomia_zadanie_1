library(tidyverse)
filmy <- read_csv("http://wawrowski.edu.pl/data/movies.csv")
ggplot(filmy, aes(x=rating, y=duration)) + 
  geom_point() +
  xlab("Ocena filmu") +
  ylab("Długość filmu (w minutach") +
  xlim(0,10) +
  theme_light()