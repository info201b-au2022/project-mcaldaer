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

# Total Number of Interactions
num_Stops <- nrow(Terry_Stops)
print(num_Stops)
num_force <- nrow(Use_Of_Force)
print(num_force)
num_shooting <- nrow(SPD_Officer_Involved_Shooting)
print(num_shooting)

# Interaction Types
print(unique(Terry_Stops$Stop.Resolution))

# 1. What kinds of interactions or violence occur between police and civilians? What are the most common ones? 
# Calculate # of Field Contact, Offense Report, Arrest, Referred for Prosecution, Citation/Infraction
Num_Field_Contact <- nrow(subset(Terry_Stops, Terry_Stops$Stop.Resolution == "Field Contact"))
print(Num_Field_Contact)
Num_Offense_Report <- nrow(subset(Terry_Stops, Terry_Stops$Stop.Resolution == "Offense Report"))
print(Num_Offense_Report)
Num_Arrest <- nrow(subset(Terry_Stops, Terry_Stops$Stop.Resolution == "Arrest"))
print(Num_Arrest)
Num_Referred_for_Prosecution <- nrow(subset(Terry_Stops, Terry_Stops$Stop.Resolution == "Referred for Prosecution"))
print(Num_Referred_for_Prosecution)
Num_Citation_Infraction <- nrow(subset(Terry_Stops, Terry_Stops$Stop.Resolution == "Citation / Infraction"))
print(Num_Citation_Infraction)

# 2. Analyze general demographics in Seattle
print(unique(Terry_Stops$Precinct))
print(unique(Use_Of_Force$Precinct))

# Calculate # in West,South,North,Southwest/SouthWest
Num_West_Stops <- nrow(subset(Terry_Stops, Terry_Stops$Precinct == "West"))
print(Num_West_Stops)
Num_South_Stops <- nrow(subset(Terry_Stops, Terry_Stops$Precinct == "South"))
print(Num_South_Stops)
Num_North_Stops <- nrow(subset(Terry_Stops, Terry_Stops$Precinct == "North"))
print(Num_North_Stops)
Num_Southwest_Stops <- nrow(subset(Terry_Stops, str_detect(Terry_Stops$Precinct, 'Southwest|SouthWest')))
print(Num_Southwest_Stops)

Num_West_Force <- nrow(subset(Use_Of_Force, Use_Of_Force$Precinct == "West"))
print(Num_West_Force)
Num_South_Force <- nrow(subset(Use_Of_Force, Use_Of_Force$Precinct == "South"))
print(Num_South_Force)
Num_North_Force <- nrow(subset(Use_Of_Force, Use_Of_Force$Precinct == "North"))
print(Num_North_Force)
Num_Southwest_Force <- nrow(subset(Use_Of_Force, Use_Of_Force$Precinct == "Southwest"))
print(Num_Southwest_Force)

# 3. How are police interactions in Seattle distributed across race and gender? Does it align with the general demographics? Or is there any bias?

# 4. How are police interactions in Seattle distributed geographically across the city? Does it align with the general demographics? Or is there any bias? 
