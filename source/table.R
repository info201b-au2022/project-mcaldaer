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
library("tidyverse")
library("dplyr")

options(timeout = 120)

# table 1 - Gender Counts

gender <- Terry_Stops %>% group_by(Subject.Perceived.Gender) %>% summarise(Counts = n())
print(gender)

# table 2 - Race Counts

race <- Terry_Stops %>% group_by(Subject.Perceived.Race) %>% summarise(Counts = n())
print(race)

# table 3 - Geography Counts

precinct <- Terry_Stops %>% group_by(Precinct) %>% summarise(Counts = n())
print(precinct)

# table 4 - Interaction Counts

resolution <- Terry_Stops %>% group_by(Stop.Resolution) %>% summarise(Counts = n())
print(resolution)
