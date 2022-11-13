# Pie Chart that shows racial distribution of stops or force or shooting.

# Note: do we have to use ggplot2? or can we just use built in R base functions?

# Load packages
library("tidyverse")
library(ggplot2)

# Load .csv data file on Terry Stops from the SPD
terry_stops_data <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-mcaldaer/main/data/Terry_Stops.csv")

# Filter data
stops <- terry_stops_data %>%
  select(perceived_race = Subject.Perceived.Race)

# Count number/value for each race
# table(stops['Subject.Perceived.Race'])
# no - function from: https://www.marsja.se/r-count-the-number-of-occurrences-in-a-column-using-dplyr/
# frequency count: https://www.geeksforgeeks.org/how-to-create-frequency-table-by-group-using-dplyr-in-r/

#count_race <- stops %>%
#  mutate(value = count(perceived_race))
  
# rename(n = value)

count_race <- stops %>%
  group_by(perceived_race) %>%
  summarize(value=n())


# Remove "DUPLICATES" and combine "-" and "Unknown"

# first pull values for "-" and "Unknown"
dash_value <- count_race %>%
  filter(perceived_race == "-") %>%
  pull(value)

unknown_value <- count_race %>%
  filter(perceived_race == "Unknown") %>%
  pull(value)

# Make new row for "Unknown Race" and delete the rows
count_race_2 <- stops %>%
  group_by(perceived_race) %>%
  summarize(value=n()) %>%
  add_row(perceived_race = "Unknown Race",
          value = dash_value + unknown_value) %>%
  slice(-c(1, 5, 10)) # delete rows: https://www.datasciencemadesimple.com/delete-or-drop-rows-in-r-with-conditions-2/

# count_race_22 <- stops %>%
#  group_by(perceived_race) %>%
#  summarize(value=n()) %>%
#  add_row(perceived_race = "Unknown Race",
#          value = 1810 + 3529) %>%
#  slice(-c(1, 5, 10)) # delete rows: https://www.datasciencemadesimple.com/delete-or-drop-rows-in-r-with-conditions-2/



# info from r-graph-gallery website: https://r-graph-gallery.com/piechart-ggplot2.html

# CREATING THE PIE CHART

# Load ggplot2
library(ggplot2)

# Create Data
data <- count_race_2

# Basic piechart
ggplot(data, aes (x="", y=value, fill=perceived_race)) +
  geom_bar(stat="identity", width=1, color="white") +
  coord_polar("y", start=0) +

  theme_void() # remove background, grid, numeric labels
  # theme(legend.position="none")
  
# More complicated piechart

# With % over the totals (race / total)
count_race_percentages <- count_race_2 %>%
  mutate(total_subjects = sum(value)) %>%
  mutate(percentage = round((value / total_subjects * 100), 2))


#count_race_percentages <- count_race %>%
#  mutate(total_subjects = sum(value)) %>%
#  mutate(percentage = round((value / total_subjects * 100), 2))


# Create Data
data2 <- count_race_percentages

# is there a way to make labels outside pointing instead of inside?
# or make it so that the percentages can be looked at hovering over data, or listed out?

# Compute the position of labels
data2 <- data2 %>% 
  arrange(desc(perceived_race)) %>%
  mutate(prop = value / sum(data2$value) *100) %>%
  mutate(ypos = cumsum(prop)- 0.5*prop )

# Basic piechart
ggplot(data2, aes(x="", y=prop, fill=perceived_race)) +
  geom_bar(stat="identity", width=1, color="white") +
  coord_polar("y", start=0) +
  theme_void() + 
  # theme(legend.position="none") +
  
  geom_text(aes(y = ypos, label = percentage), color = "white", size=3) +
  scale_fill_brewer(palette="Set3")

# Paragraph Description
  
