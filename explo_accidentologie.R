library(tidyverse)

accidents <- read_csv("./accidents_marseille.csv")

# combien d'accidents impliquent au moins un vélo ?
accidents %>% 
  count(has_velo)

# par année

accidents %>% 
  count(has_velo, ANNEE) %>% 
  spread(ANNEE, value = n)

accidents %>% 
  count(has_velo, ANNEE) %>%
  filter(has_velo == "true") %>% 
  ggplot(aes(x = ANNEE, y = n)) +
  geom_line()

# en proportion
accidents %>% 
  group_by(has_velo, ANNEE) %>%
  summarise(n = n()) %>% 
  group_by(ANNEE) %>% 
  mutate(p = n / sum(n) * 100) %>% 
  select(-n) %>% 
  spread(ANNEE, value = p)

accidents %>% 
  group_by(has_velo, ANNEE) %>%
  summarise(n = n()) %>% 
  group_by(ANNEE) %>% 
  mutate(p = n / sum(n) * 100) %>% 
  filter(has_velo == "true") %>% 
  ggplot(aes(x = ANNEE, y = p)) +
  geom_line()

# accidents impliquant de nombreux vélos

# accidents %>% 
#   arrange(desc(velo_nb)) %>% 
#   View()

# gravité accident et agglomération

accidents %>% 
  filter(has_velo == "true") %>% 
  count(gravite_accident, catr)

# accidentologie de Marseille vs Paris


accidents_national <- read_csv2("./accidents.csv")

accidents_national %>% 
  filter(current_city_code %in% c(13201:13216, 13055, 75101:75120, 75056)) %>% 
  group_by(dep, has_velo) %>% 
  summarise(n = n()) %>% 
  mutate(p = n / sum(n) * 100)

# autres impliqués

accidents %>% 
  filter(has_velo == "true") %>% 
  count(has_deuxrouesmotorises, has_voiture, has_poidslourd, has_pietons)

# comparaison autres modes 

accidents %>% 
  count(has_velo == "true") %>% 
  mutate(p = n / sum(n) * 100)

accidents %>% 
  count(has_voiture == "true") %>% 
  mutate(p = n / sum(n) * 100)

accidents %>% 
  count(has_pietons == "true") %>% 
  mutate(p = n / sum(n) * 100)

accidents %>% 
  count(has_deuxrouesmotorises == "true") %>% 
  mutate(p = n / sum(n) * 100)

accidents %>% 
  count(has_poidslourd == "true") %>% 
  mutate(p = n / sum(n) * 100)
