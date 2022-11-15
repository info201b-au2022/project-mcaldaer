# Bar chart showing most frequent types of force or outcome of (fatal or non fatal) shooting

# Load packages
library("tidyverse")
library("ggplot2")

Use_Of_Force <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-mcaldaer/main/data/Use_Of_Force.csv")

bar_chart <- ggplot(Use_Of_Force, aes(x = Incident_Type)) +
  geom_bar(stat = "count") +
  labs(title = "Types of Force Used by Seattle Officers", x = "Types of Force", y = "Count") +
  coord_flip()
names(which.max(table(Use_Of_Force$Incident_Type)))

uses <- Use_Of_Force %>%
  group_by(Incident_Type) %>%
  summarize(value=n()) %>%
  filter(value == max(value)) %>%
  pull(value)
