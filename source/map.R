install.packages("ggmap")
library(ggplot2)
library(ggmap)
library(dplyr)
#LOOK AT LEAFLET AND W7 L2 R FILES FOR HELP

#load Officer Involved Shooting dataset 
raw_OIS <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-mcaldaer/main/data/SPD_Officer_Involved_Shooting__OIS__Data.csv")
View(raw_OIS)

#selecting relevant columns
OIS <- raw_OIS %>% 
  filter(City == "Seattle") %>% 
  select(Longitude, Latitude, Subject.Race, Fatal) %>% 
  rename(lat = Latitude, long = Longitude, race = Subject.Race)
View(OIS)

#here I am setting the parameters for the map layer 
seattle <- qmap("seattle", zoom = 11, source = "stamen", maptype = "toner")
seattle

#here I can get a scatterplot of the longitude/latitude points by fatality
ggplot(data = OIS)+
  geom_point(mapping = aes(x = long, y = lat, color = Fatal))

#here I can get a scatterplot of the longitude/latitude points by race
ggplot(data = OIS)+
  geom_point(mapping = aes(x = long, y = lat, color = race))

#scatterplot on the map, by fatality 
seattle +
  geom_point(data=OIS, 
             aes(x=long, y=lat, 
                 color = Fatal))

#scatterplot on the map, by race
seattle +
  geom_point(data=OIS, 
             aes(x=long, y=lat, 
                 color = race))
install.packages("leaflet")


library(leaflet)
leaflet() %>% 
  addTiles() %>% 
  setView(47.6062, 122.3321, zoom = 5)


# map <- get_map("seattle")
# ggmap(map) +
#   geom_point(
#     mapping = aes(x = Lat, y = Long), 
#     color = "blue"
#   ) 


# Lat <- OIS$Latitude
# Long <- OIS$Longitude

# map <- get_map("seattle")
# ggmap(map) +
#   ggplot(data = OIS) +
#   geom_point(
#     mapping = aes(x = lat, y = long))



# register_google(key = "AIzaSyA6IXtNTqQSNjxLG0vcFgct5eHOChp5MNw")

