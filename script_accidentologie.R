library(tidyverse)

accidents <- read_csv2("./accidents.csv")

accidents_marseille <- accidents %>% 
  filter(current_city_code %in% c(13201:13216, 13055))

write_csv(accidents_marseille, "./accidents_marseille.csv")
