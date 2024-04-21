library(tidyverse)
filmy <- read_csv("http://wawrowski.edu.pl/data/movies.csv")
filmy %>% 
  count(director) %>% 
  top_n(10, n) %>% 
  mutate(director=fct_reorder(director,n)) %>% 
  ggplot(aes(x=n, y=director)) +
  geom_col(fill = "#8856a7") +
  geom_text(aes(label = n), hjust = 1.5, color = "white") +
  xlab("Liczba filmów") +
  ylab("Reżyser") +
  theme_classic()