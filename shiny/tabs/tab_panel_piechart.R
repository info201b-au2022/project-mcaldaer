# tab_panel_chart2

library(shiny)

type_input <- selectInput(
  "police_interaction_type", label = "Type of Interaction by Police",
  choices = list(c("Police Terry Stops", "Officer-Involved Shooting", "Use of Force")),
  selected = "Police Terry Stops"
)

tab_panel_piechart <-tabPanel(
    "Chart 2: Pie Chart",
    p("This is where Allison's Pie Chart will be."),
    type_input,
    plotOutput("piechart")
)

library("tidyverse")
library(ggplot2)

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


# info from r-graph-gallery website: https://r-graph-gallery.com/piechart-ggplot2.html

# CREATING THE PIE CHART

# Load ggplot2
library(ggplot2)

# Create Data
data <- count_race_2 %>%
  rename("Perceived Race" = "perceived_race")

# Basic piechart
pie_chart <- ggplot(data, aes (x="", y=value, fill=`Perceived Race`)) +
  geom_bar(stat="identity", width=1, color="white") +
  coord_polar("y", start=0) +
  
  theme_void() # remove background, grid, numeric labels
# theme(legend.position="none")

pie_chart


count_race_percentages <- data %>%
  mutate(total_subjects = sum(value)) %>%
  mutate(percentage = round((value / total_subjects * 100), 2))

# Create Data
data2 <- count_race_percentages

pie_chart_2 <- ggplot(data2, aes (x="", y=percentage, fill=`Perceived Race`)) +
  geom_bar(stat="identity", width=1, color="white") +
  coord_polar("y", start=0) +
  
  theme_void() # remove background, grid, numeric labels
# theme(legend.position="none")

pie_chart_2


# plotly pie chart from: https://plotly.com/r/pie-charts/
library(plotly)

pie_chart_stops <- plot_ly(data2, labels = ~`Perceived Race`, values = ~percentage, type = 'pie')
pie_chart_stops <- pie_chart_stops %>% layout(title = 'Police Terry Stops by Race',
                      xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
                      yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
pie_chart_stops




# Load .csv data file on Terry Stops from the SPD
officer_shooting_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-mcaldaer/main/data/SPD_Officer_Involved_Shooting__OIS__Data.csv")
View(officer_shooting_data)

# Filter data
shootings <- officer_shooting_data %>%
  select(perceived_race = Subject.Race)
View(shootings)

# Count number/value for each race
# frequency count: https://www.geeksforgeeks.org/how-to-create-frequency-table-by-group-using-dplyr-in-r/
count_shootings_race <- shootings %>%
  group_by(perceived_race) %>%
  summarize(value=n())
View(count_shootings_race)


count_race_percentages <- data %>%
  mutate(total_subjects = sum(value)) %>%
  mutate(percentage = round((value / total_subjects * 100), 2))

# Create Data
data2 <- count_race_percentages

pie_chart_2 <- ggplot(data2, aes (x="", y=percentage, fill=`Perceived Race`)) +
  geom_bar(stat="identity", width=1, color="white") +
  coord_polar("y", start=0) +
  
  theme_void() # remove background, grid, numeric labels
# theme(legend.position="none")

pie_chart_2


# plotly pie chart from: https://plotly.com/r/pie-charts/
library(plotly)

pie_chart_stops <- plot_ly(data2, labels = ~`Perceived Race`, values = ~percentage, type = 'pie')
pie_chart_stops <- pie_chart_stops %>% layout(title = 'Police Terry Stops by Race',
                                              xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
                                              yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
pie_chart_stops

