library(tidyverse)
filmy <- read_csv("http://wawrowski.edu.pl/data/movies.csv")
filmy %>% 
  filter(year %in% 2014:2016) %>% 
  group_by(year) %>% 
  top_n(5, rating) %>%
  ungroup() %>% 
  mutate(title = fct_reorder(title, rating)) %>% 
  ggplot(aes(y=title, x=rating, fill = as.factor(year))) +
  geom_col() +
  xlab("Ocena filmu") +
  ylab("Tytuł filmu") +
  scale_fill_discrete(name = "Rok") +
  theme_light() +
  theme(legend.position = "top")