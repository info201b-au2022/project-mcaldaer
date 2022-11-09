# calculates summary information to be included in the report

# Load data ----
Terry_Stops <- read.csv(file = "https://github.com/info201b-au2022/project-mcaldaer/tree/main/data/Terry_Stops.csv", sep = ",")
View(Terry_Stops)
Use_Of_Force <- read.csv("https://github.com/info201b-au2022/project-mcaldaer/tree/main/data/Use_Of_Force.csv")
View(Use_Of_Force)
SPD_Officer_Involved_Shooting <- read.csv("https://github.com/info201b-au2022/project-mcaldaer/tree/main/data/SPD_Officer_Involved_Shooting__OIS__Data.csv")
View(SPD_Officer_Involved_Shooting)

# Shooting <- read.csv("C:\\Users\\ivyli\\Documents\\INFO201\\data\\Shooting.csv")
# View(Shooting)

# Load the tidyverse packages
# install.packages("tidyverse") - do it if not installed
# install.packages("dplyr") - do it if not installed
library("tidyverse")
library("dplyr")
