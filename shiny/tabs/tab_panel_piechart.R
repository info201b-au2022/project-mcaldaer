# tab_panel_chart2

library(shiny)
library("tidyverse")
library(ggplot2)
library(plotly)

type_input <- selectInput(
  "police_interaction_type", label = "Type of Interaction by Police",
  choices = c("Police Terry Stops", "Officer-Involved Shooting", "Use of Force"),
  selected = "Police Terry Stops"
)

tab_panel_piechart <-tabPanel(
  "Police Interactions",
  h2("Police Action on Civilians by Race in Seattle, WA"),
  type_input,
  plotlyOutput("piechart"),
  p("The purpose of the created pie chart is to display visually the 
  perceived races of the people that are stopped by police based on data 
  from the SPD, so that any disparities between the number of stops for 
  different races, as well as variances from the overall Seattle 
  demographics can be acknowledged. From the
  pie chart, it can be seen that people of the perceived race of White 
  is the group that is stopped the most by police. The second group of 
  people with the greatest number of stops would be people that belong 
  to the Black or African American race. The chart also displays numerous 
  other races and how much they are stopped in comparison to those of 
  other racial groups. The data from the chart can be used to compare 
  to overall Seattle demographics. For the White people, the groups seem 
  to correspond, with the group being the largest demographic in Seattle, 
  and also being the group that recieves the most interactions from the
  police regardless of the type of interaction. However, 
  the contrast in some groups are significant. Specifically, it is 
  concerning how much greater, at 29.71% of Black people being 
  stopped by police all the way up to 36.1% of Black people encountering
  use of force by officers, while they only compose of 7.06% of the population of
  the city of Seattle. Overall, the displayed data is very useful in helping
    people gain insight on the differences in amounts of police interactions
    that people of different racial groups face and receive.")
)



# Load .csv data file on Terry Stops from the SPD
terry_stops_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-mcaldaer/main/data/Terry_Stops.csv")

# Filter data
stops <- terry_stops_data %>%
  select(perceived_race = Subject.Perceived.Race)

# Count number/value for each race
# frequency count: https://www.geeksforgeeks.org/how-to-create-frequency-table-by-group-using-dplyr-in-r/
count_race <- stops %>%
  group_by(perceived_race) %>%
  summarize(value=n())


# Remove "DUPLICATES" and combine "-" and "Unknown"

# first pull values for "-" and "Unknown"
dash_value <- count_race %>%
  filter(perceived_race == "-") %>%
  pull(value) # value is 1810

unknown_value <- count_race %>%
  filter(perceived_race == "Unknown") %>%
  pull(value) # value is 3529

# Make new row for "Unknown Race" and delete the rows
count_race_2 <- stops %>%
  group_by(perceived_race) %>%
  summarize(value=n()) %>%
  add_row(perceived_race = "Unknown Race",
          value = dash_value + unknown_value) %>%
  slice(-c(1, 5, 10)) # delete rows: https://www.datasciencemadesimple.com/delete-or-drop-rows-in-r-with-conditions-2/


# Create Data
data <- count_race_2 %>%
  rename("Perceived Race" = "perceived_race")


# Load .csv data file on Officer Shootings from the SPD
officer_shooting_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-mcaldaer/main/data/SPD_Officer_Involved_Shooting__OIS__Data.csv")

# Filter data
shootings <- officer_shooting_data %>%
  select(perceived_race = Subject.Race)

# Count number/value for each race
count_shootings_race <- shootings %>%
  group_by(perceived_race) %>%
  summarize(value=n())

# Create Data
data2 <- count_shootings_race %>%
  rename("Perceived Race" = "perceived_race")


# Load .csv data file on Officer Shootings from the SPD
use_of_force_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-mcaldaer/main/data/Use_Of_Force.csv")
# View(use_of_force_data)

# Filter data
force <- use_of_force_data %>%
  select(perceived_race = Subject_Race)

# Count number/value for each race
count_force_race <- force %>%
  group_by(perceived_race) %>%
  summarize(value=n())

# Create Data
data3 <- count_force_race %>%
  rename("Perceived Race" = "perceived_race")


