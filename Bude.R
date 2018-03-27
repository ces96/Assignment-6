library(tidyverse)
library(ggmap)


# Empty maps

## Road map
map_road <- get_googlemap(center = c(-4.543678, 50.826636), zoom = 14)
ggmap(map_road)

## Watercolor map
map_wtr <- get_map("Bude", maptype = "watercolor",zoom= 14)
ggmap(map_wtr)

# Marked maps

## Road map
ggmap(map_road) +
  geom_point(
    aes(x = -4.55134929999997 , y = 50.8305399),
    color = "red", size = 3) +
  geom_point(
    aes(x = -4.553962 , y = 50.83587),
    color = "blue", size = 3) +
  geom_point(
    aes(x = -4.550984200000016 , y = 50.8361969),
    color = "orange", size = 3)+
  geom_point(
    aes(x = -4.552814, y = 50.83347),
    color = "yellow", size = 3)+
  geom_point(
    aes(x = -4.542988, y = 50.836090),
    color = "purple", size = 3)+
  geom_point(
    aes(x = -4.548689 , y = 50.831393),
    color = "green", size = 3) +
  geom_point(
    aes(x = -4.547858 , y = 50.826973),
    color = "brown", size = 3)

## Watercolor map
ggmap(map_wtr) +
  geom_point(
    aes(x = -4.55134929999997 , y = 50.8305399),
    color = "red", size = 3) +
  geom_point(
    aes(x = -4.553962 , y = 50.83587),
    color = "blue", size = 3) +
  geom_point(
    aes(x = -4.550984200000016 , y = 50.8361969),
    color = "orange", size = 3)+
  geom_point(
    aes(x = -4.552814, y = 50.83347),
    color = "yellow", size = 3)+
  geom_point(
    aes(x = -4.542988, y = 50.836090),
    color = "purple", size = 3)+
  geom_point(
    aes(x = -4.548689 , y = 50.831393),
    color = "green", size = 3) +
  geom_point(
    aes(x = -4.547858 , y = 50.826973),
    color = "brown", size = 3)

# Maps with routes

from <- "Bude North Cornwall Cricket Club"
to <- "Crooklets Inn"
route_df <- route(from, to, structure = "route")

## Road map
map_road <- get_map("Bude North Cornwall Cricket Club", maptype = "roadmap",zoom= 16)

ggmap(map_road) +
  geom_point(
    aes(x = -4.550984200000016 , y = 50.8361969),
    color = "orange", size = 3)+
  geom_point(
    aes(x = -4.552814, y = 50.83347),
    color = "yellow", size = 3) +
  geom_path(
    aes(x = lon, y = lat), colour = "red", size = 1.5,
    data = route_df, lineend = "round"
  )


## Watercolor map
map_road <- get_map("Bude North Cornwall Cricket Club", maptype = "watercolor",zoom= 16)

ggmap(map_wtr) +
  geom_point(
    aes(x = -4.550984200000016 , y = 50.8361969),
    color = "orange", size = 3)+
  geom_point(
    aes(x = -4.552814, y = 50.83347),
    color = "yellow", size = 3) +
  geom_path(
    aes(x = lon, y = lat), colour = "red", size = 1.5,
    data = route_df, lineend = "round"
  )




             
