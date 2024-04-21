wylosowanie_dat <- function(liczba_osob) {
  daty <- sample(1:365, liczba_osob, replace = TRUE)
  powtorzenia <- any(duplicated(daty))
  return(powtorzenia)
}
dla_23_osob <- replicate(100000, wylosowanie_dat(23))
prawdodobienstwo <- sum(dla_23_osob) / length(dla_23_osob) * 100
print(paste(prawdodobienstwo, "%"))