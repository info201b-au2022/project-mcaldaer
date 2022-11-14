# calculates summary information to be included in the report

# Load data ----
Terry_Stops <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-mcaldaer/main/data/Terry_Stops.csv", sep = ",")
View(Terry_Stops)
Use_Of_Force <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-mcaldaer/main/data/Use_Of_Force.csv")
View(Use_Of_Force)
SPD_Officer_Involved_Shooting <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-mcaldaer/main/data/SPD_Officer_Involved_Shooting__OIS__Data.csv")
View(SPD_Officer_Involved_Shooting)

# Load the tidyverse packages
# install.packages("tidyverse") - do it if not installed
# install.packages("dplyr") - do it if not installed
install.packages("knitr")
library("tidyverse")
library("dplyr")
library(knitr)

options(timeout = 120) 

# table 1 - Gender Counts

gender <- Terry_Stops %>% group_by(Subject.Perceived.Gender) %>% summarise(Counts = n())
print(gender)
total_count <- sum(gender[["Counts"]])
print(total_count)
gender1 <- mutate(gender, Percentage = 100.0 * Counts / total_count)
print(gender1)
gender_table <- kable(gender1, col.names = c("Gender", "Stop Counts", "Percentage"), caption = "Gender Stop Counts")

# table 2 - Race Counts

race <- Terry_Stops %>% group_by(Subject.Perceived.Race) %>% summarise(Counts = n())
print(race)
total_count <- sum(race[["Counts"]])
print(total_count)
race1 <- mutate(race, Percentage = 100.0 * Counts / total_count)
print(race1)
race_table <- kable(race1, col.names = c("Race", "Stop Counts", "Percentage"), caption = "Race Stop Counts")

# table 3 - Geography Counts 

precinct <- Terry_Stops %>% group_by(Precinct) %>% summarise(Counts = n())
print(precinct)
total_count <- sum(precinct[["Counts"]])
print(total_count)
precinct1 <- mutate(precinct, Percentage = 100.0 * Counts / total_count)
print(precinct1)
geo_table <- kable(precinct1, col.names = c("Geography", "Stop Counts", "Percentage"), caption = "Geography Stop Counts")

# table 4 - Interaction Counts

resolution <- Terry_Stops %>% group_by(Stop.Resolution) %>% summarise(Counts = n())
print(resolution)
total_count <- sum(resolution[["Counts"]])
print(total_count)
resolution1 <- mutate(resolution, Percentage = 100.0 * Counts / total_count)
print(resolution1)
interaction_table <- kable(resolution1, col.names = c("Interaction", "Stop Counts", "Percentage"), caption = "Interaction Stop Counts")
