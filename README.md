# DATAmythes : la pratique du vélo à Marseille

## Quelques sources de données utilisables

### L'accidentologie

[Données brutes sur data.gouv](https://www.data.gouv.fr/fr/datasets/base-de-donnees-accidents-corporels-de-la-circulation/), [Données retraitées par les Entrepreneurs d'intérêt général](https://www.data.gouv.fr/fr/datasets/r/8d0753c2-92a3-48f7-a3cc-133be9bf2e29). 

### Les équipements cyclables

[Requête overpass turbo](./requete_overpass), fortement inspirée de [celle de Charles Népote](https://gist.github.com/CharlesNepote/9806b459d5f7ee671681e55b35cb0a81) pour récupérer toutes les données OpenStreetMap liées de près ou de loin à la cyclabilité. Aller sur [Overpass turbo](http://overpass-turbo.eu/). Pour utiliser ces données dans R, voir [ce package overpass](https://hrbrmstr.github.io/overpass/). 

### La météo

[Relevés météorologiques de surface (SYNOP) de la station de Marseille Marignane](https://public.opendatasoft.com/explore/dataset/donnees-synop-essentielles-omm/export/?refine.nom=MARIGNANE&dataChart=eyJxdWVyaWVzIjpbeyJjb25maWciOnsiZGF0YXNldCI6ImRvbm5lZXMtc3lub3AtZXNzZW50aWVsbGVzLW9tbSIsIm9wdGlvbnMiOnsicmVmaW5lLm5vbSI6Ik1BUklHTkFORSJ9fSwiY2hhcnRzIjpbeyJ0eXBlIjoibGluZSIsImZ1bmMiOiJBVkciLCJ5QXhpcyI6InUiLCJzY2llbnRpZmljRGlzcGxheSI6dHJ1ZSwiY29sb3IiOiIjRkY1MTVBIn1dLCJ4QXhpcyI6ImRhdGUiLCJtYXhwb2ludHMiOiIiLCJ0aW1lc2NhbGUiOiJob3VyIiwic29ydCI6IiJ9XSwiZGlzcGxheUxlZ2VuZCI6dHJ1ZX0%3D&location=22,43.43767,5.216&basemap=jawg.streets)

### L'usage du Vélo en libre-service

L'IFSTTAR a compilé des historiques de données sur l'utilisation des réseaux de vélo en libre service, dont Le Vélo, plus des données météo simples:
http://vlsstats.ifsttar.fr
http://vlsstats.ifsttar.fr/rawdata/
http://vlsstats.ifsttar.fr/data/

Avec des visualisations sympas:
http://vlsstats.ifsttar.fr/cityinfo.html?Marseille

### La qualité de l'air

https://trouver.datasud.fr/dataset?q=pollution&sort=score+desc%2C+metadata_modified+desc

Hélas pas de données à une maille inférieure à l'année :/
