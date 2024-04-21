pkn <- function(gracz, strategia) {
  ruchy <- c("kamień", "papier", "nożyce")
  komputer <- switch(
    strategia,
    "losowo" = sample(ruchy, 1),
    "wygrana" = switch(gracz,
                       "kamień" = "papier",
                        "nożyce" = "kamień",
                       "papier" = "nożyce"),
    "przegrana" = switch(gracz, 
                         "kamień" = "nożyce",
                         "nożyce" = "papier",
                         "papier" = "kamień")
  )
  if (gracz == komputer) {
    return("remis")
  } else if ((gracz == "kamień" & komputer == "nożyce") |
            (gracz == "nożyce" & komputer == "papier") |
            (gracz == "papier" & komputer == "kamień")) {
    return("wygrana")
  } else {
    return("przegrana")
  }
}

pkn("kamień", "losowo")
pkn("papier", "wygrana")