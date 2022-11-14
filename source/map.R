# install.packages("ggmap")
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
  select(Longitude, Latitude, Subject.Race, Fatal, Disposition) %>% 
  rename(lat = Latitude, long = Longitude, race = Subject.Race, justified = Disposition)
View(OIS)

#here I am setting the parameters for the map layer 
seattle <- qmap("seattle", zoom = 11, source = "stamen", maptype = "toner")
seattle

#creating generic labels 
labels <- labs(
  title = "Map of Officer Involved Shootings in Seattle, WA", 
  subtitle = "Data from 2005-2019"
)
#here I can get a scatterplot of the longitude/latitude points by fatality
ggplot(data = OIS)+
  geom_point(mapping = aes(x = long, y = lat, color = Fatal))

#here I can get a scatterplot of the longitude/latitude points by race
ggplot(data = OIS)+
  geom_point(mapping = aes(x = long, y = lat, color = race))

#scatterplot on the map, by fatality 
map_fatality <- seattle +
  geom_point(data=OIS, 
             aes(x=long, y=lat, 
                 color = Fatal)) + 
  labels +
  labs(caption = "Officer Involved Shooting in Seattle from 2005, displayed by fatality", 
       alt = "Officer Involved Shooting in Seattle from 2005, displayed by fatality")

#scatterplot on the map, by race
map_race <- seattle +
  geom_point(data=OIS, 
             aes(x=long, y=lat, 
                 color = race)) +
  labels +
  labs(caption = "Officer Involved Shooting in Seattle from 2005, displayed by race", 
       alt = "Officer Involved Shooting in Seattle from 2005, displayed by race")


#scatterplot on map, color indicates whether shooting was justified 
map_justified <- seattle +
  geom_point(data=OIS, 
             aes(x=long, y=lat, 
                 color = justified)) +
  labels +
  labs(caption = "Officer Involved Shooting in Seattle from 2005, displayed by whether force was justified", 
       alt = "Officer Involved Shooting in Seattle from 2005, displayed by whether force was justified")
map_justified

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



register_google(key = "AIzaSyA6IXtNTqQSNjxLG0vcFgct5eHOChp5MNw")

