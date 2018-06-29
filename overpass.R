library(overpass)

requete <- paste0(readLines("./requete_overpass"), collapse = "\n")
resultat <- overpass_query(requete)
