library(tidyverse)
filmy <- read_csv("http://wawrowski.edu.pl/data/movies.csv")
wybrane_filmy <- filmy %>% 
  filter(genre %in% c("Action", "Comedy", "Drama"))
ggplot(data = wybrane_filmy, mapping = aes(x=rating)) + 
  geom_histogram(binwidth = 0.5, fill = "blue") +
  xlim(0,10) +
  xlab("Ocena filmu") +
  ylab("Liczba filmów") +
  facet_wrap(~ genre) +
  theme_bw()