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

# 3. How are police interactions in Seattle distributed across race and gender? Does it align with the general demographics? Or is there any bias?

# 4. How are police interactions in Seattle distributed geographically across the city? Does it align with the general demographics? Or is there any bias? 
