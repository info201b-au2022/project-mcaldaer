# Pie Chart that shows racial distribution of stops or force or shooting.

# Load packages
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

# More complicated piechart

# With % over the totals (race / total)
count_race_percentages <- count_race_2 %>%
  mutate(total_subjects = sum(value)) %>%
  mutate(percentage = round((value / total_subjects * 100), 2))


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
pie_chart_2 <- ggplot(data2, aes(x="", y=prop, fill=perceived_race)) +
  geom_bar(stat="identity", width=1, color="white") +
  coord_polar("y", start=0) +
  theme_void() + 
  # theme(legend.position="none") +
  
  geom_text(aes(y = ypos, label = percentage), color = "white", size=3) +
  scale_fill_brewer(palette="Set1")

pie_chart_2


# Pie Chart #3 : https://r-charts.com/part-whole/pie-chart-labels-outside-ggplot2/

# Load Libraries
library(ggplot2)
library(ggrepel)
library(tidyverse)

# Get the positions
df2 <- count_race_percentages %>% 
  mutate(csum = rev(cumsum(rev(percentage))), 
         pos = percentage/2 + lead(csum, 1),
         pos = if_else(is.na(pos), percentage/2, pos))

pie_chart_3 <-ggplot(count_race_percentages, aes(x = "" , y = percentage, fill = fct_inorder(perceived_race))) +
  geom_col(width = 1, color = "white") +
  coord_polar(theta = "y") +
  scale_fill_brewer(palette = "Pastel1") +
  geom_label_repel(data = df2,
                   aes(y = pos, label = paste0(percentage, "%")),
                   size = 4.5, nudge_x = 1, show.legend = FALSE) +
  guides(fill = guide_legend(title = "Perceived Race")) +
  theme_void() +
  ggtitle("Police Terry Stops by Race")

pie_chart_3

# Paragraph Description
# The purpose of the created pie chart is to display visually the perceived races of the
# people that are stopped by police based on data from the SPD, so that any disparities
# between the number of stops for different races can be acknowledged. From the
# pie chart, it can be seen that people of the perceived race of White is the
# group that is stopped the most by police. Additionally, the second group of
# people with the greatest number of stops would be people that belong to the
# race of Black or African American. The chart also displays numerous other
# races and how much they are stopped in comparison to those of other racial groups.


