znajdowanie_dzielnikow <- function(liczba) {
  dzielniki <- c()
  for (i in 1:liczba) {
    if (liczba %% i == 0) {
      dzielniki <- c(dzielniki, i)
    }
  }
  return(dzielniki)
}
liczba <- 26
print(znajdowanie_dzielnikow(liczba))