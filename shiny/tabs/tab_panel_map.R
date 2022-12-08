# tab_panel_chart3

library(shiny)
library(ggmap)
library(tidyverse)
library(patchwork)
register_google(key = "AIzaSyA6IXtNTqQSNjxLG0vcFgct5eHOChp5MNw")
# source("../../source/map.R")

raw_OIS <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-mcaldaer/main/data/SPD_Officer_Involved_Shooting__OIS__Data.csv")
# View(raw_OIS)

OIS <- raw_OIS %>% 
  filter(City == "Seattle") %>% 
  select(Longitude, Latitude, Subject.Race, Fatal, Disposition) %>% 
  rename(lat = Latitude, long = Longitude, Race = Subject.Race, Justified = Disposition)
# View(OIS)

#here I am setting the parameters for the map layer 
seattle <- qmap("seattle", zoom = 11, source = "stamen", maptype = "toner")
seattle

#creating generic labels 
labels <- labs(
  title = "Map of Officer Involved Shootings in Seattle, WA", 
  subtitle = "Data from 2005-2019"
)
#here I can get a scatterplot of the longitude/latitude points by fatality

tab_panel_map <-tabPanel(
    "Mapping Police Shootings",
    h3("Control the Appearance of the Map:"),
    sidebarLayout(
      sidebarPanel(radioButtons(inputId = "map_var", label = "Select Variable to Display",
                                choices = c("Fatal", "Subject_Race", "Justified"), 
                                selected = "Fatal"),
                   sliderInput(inputId = "date_range", label = "Choose Date Range", 
                               min = 2005, max = 2019, 
                               value = c(2005, 2019), sep = "")),
  
      mainPanel(
        h3("Plotting Officer Involved Shootings in Seattle, WA (2005-2019)"),
        plotlyOutput(outputId = "map"), 
        p("This visualization seeks to geographically plot the most extreme form of police violence", 
        em("Officer Involved Shootings."), "This plot was included because it allows us to visualize where", 
        "in Seattle shootings have occurred. While it would have been valuable to plot the geographical distribution",
        "of all the of the interactions we are analyzing (Terry Stops and Use of Force, too), the Officer Involved", 
        "Shootings (OIS) dataset was the only set that included detailed location data. The longitude and latitude", 
        "points included in the OIS dataset made for straightforward plotting."),
        
        p("By plotting these 156 instances of OIS on a map of Seattle, one can observe that a large cluster of",
          "shootings occurred in the city center, in Downtown Seattle and the surrounding areas. One can also", 
          "observe an absence of shootings in North Seattle neighborhoods like Ballard, Fremont,", 
          "Magnolia and Queen Anne as well as the neighborhood of Madison Park. Perhaps unsurprisingly, these", 
          "are some of the wealthier (and whiter) neighborhoods in the city. Interacting with the widgets allows users to", 
          "adjust the date range of the data presented, as well as change what the color of the data points represent.", 
          "The color of the dots on the map indicate either fatality, the race of the subject, or whether the shooting was justified. 
          While the map is useful for understanding the geographical distribution of shootings, these sub-trends are more easily understood by summary statistics,", 
          "or a different type of visualization."))
        
      )
    )
    
