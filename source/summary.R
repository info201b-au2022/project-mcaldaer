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
interactions <- print(unique(Terry_Stops$Stop.Resolution))

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
# https://worldpopulationreview.com/us-cities/seattle-wa-population
# https://www.census.gov/quickfacts/seattlecitywashington 
# Seattle Demographics (%)

Num_White <- 65.81
Num_Asian <- 16.31
Num_MultiRacial <- 7.64
Num_Black <- 7.06
Num_Other <- 2.38
Num_American_Indian <- 0.54
Num_Hawaiian <- 0.26
Num_Hispanic <- 7.1

Num_Male <- 49.9
Num_Female <- 50.1

# 3. How are police interactions in Seattle distributed across race and gender? Does it align with the general demographics? Or is there any bias?
print(unique(Terry_Stops$Subject.Perceived.Race))
# Race Types: Asian, White, Black or African American, American Indian or Alaska Native, Hispanic, Multi-Racial, Native Hawaiian or Other Pacific Islander

Num_Asian_Stops <- nrow(subset(Terry_Stops, str_detect(Terry_Stops$Subject.Perceived.Race, 'Asian')))
print(Num_Asian_Stops)
Num_White_Stops <- nrow(subset(Terry_Stops, str_detect(Terry_Stops$Subject.Perceived.Race, 'White')))
print(Num_White_Stops)
Num_Black_Stops <- nrow(subset(Terry_Stops, str_detect(Terry_Stops$Subject.Perceived.Race, 'Black')))
print(Num_Black_Stops)
Num_American_Indian_Stops <- nrow(subset(Terry_Stops, str_detect(Terry_Stops$Subject.Perceived.Race, 'Indian')))
print(Num_American_Indian_Stops)
Num_Hispanic_Stops <- nrow(subset(Terry_Stops, str_detect(Terry_Stops$Subject.Perceived.Race, 'Hispanic')))
print(Num_Hispanic_Stops)
Num_MultiRacial_Stops <- nrow(subset(Terry_Stops, str_detect(Terry_Stops$Subject.Perceived.Race, 'Multi-Racial')))
print(Num_MultiRacial_Stops)
Num_Hawaiian_Stops <- nrow(subset(Terry_Stops, str_detect(Terry_Stops$Subject.Perceived.Race, 'Hawaiian')))
print(Num_Hawaiian_Stops)

Num_Asian_Force <- nrow(subset(Use_Of_Force, str_detect(Use_Of_Force$Subject_Race, 'Asian')))
print(Num_Asian_Force)
Num_White_Force <- nrow(subset(Use_Of_Force, str_detect(Use_Of_Force$Subject_Race, 'White')))
print(Num_White_Force)
Num_Black_Force <- nrow(subset(Use_Of_Force, str_detect(Use_Of_Force$Subject_Race, 'Black')))
print(Num_Black_Force)
Num_American_Indian_Force <- nrow(subset(Use_Of_Force, str_detect(Use_Of_Force$Subject_Race, 'Indian')))
print(Num_American_Indian_Force)
Num_Hispanic_Force <- nrow(subset(Use_Of_Force, str_detect(Use_Of_Force$Subject_Race, 'Hispanic')))
print(Num_Hispanic_Force)
Num_MultiRacial_Force <- nrow(subset(Use_Of_Force, str_detect(Use_Of_Force$Subject_Race, 'Multi-Racial')))
print(Num_MultiRacial_Force)
Num_Hawaiian_Force <- nrow(subset(Use_Of_Force, str_detect(Use_Of_Force$Subject_Race, 'Hawaiian')))
print(Num_Hawaiian_Force)

Num_Asian_Shooting <- nrow(subset(SPD_Officer_Involved_Shooting, str_detect(SPD_Officer_Involved_Shooting$Subject.Race, 'Asian')))
print(Num_Asian_Shooting)
Num_White_Shooting <- nrow(subset(SPD_Officer_Involved_Shooting, str_detect(SPD_Officer_Involved_Shooting$Subject.Race, 'White')))
print(Num_White_Shooting)
Num_Black_Shooting <- nrow(subset(SPD_Officer_Involved_Shooting, str_detect(SPD_Officer_Involved_Shooting$Subject.Race, 'Black')))
print(Num_Black_Shooting)
Num_American_Indian_Shooting <- nrow(subset(SPD_Officer_Involved_Shooting, str_detect(SPD_Officer_Involved_Shooting$Subject.Race, 'Indian')))
print(Num_American_Indian_Shooting)
Num_Hispanic_Shooting <- nrow(subset(SPD_Officer_Involved_Shooting, str_detect(SPD_Officer_Involved_Shooting$Subject.Race, 'Hispanic')))
print(Num_Hispanic_Shooting)
Num_MultiRacial_Shooting <- nrow(subset(SPD_Officer_Involved_Shooting, str_detect(SPD_Officer_Involved_Shooting$Subject.Race, 'Multi-Racial')))
print(Num_MultiRacial_Shooting)
Num_Hawaiian_Shooting <- nrow(subset(SPD_Officer_Involved_Shooting, str_detect(SPD_Officer_Involved_Shooting$Subject.Race, 'Hawaiian')))
print(Num_Hawaiian_Shooting)

# Gender Types: Male, Female
Num_Male_Stops <- nrow(subset(Terry_Stops, str_detect(Terry_Stops$Subject.Perceived.Gender, 'Male')))
print(Num_Male_Stops)
Num_Female_Stops <- nrow(subset(Terry_Stops, str_detect(Terry_Stops$Subject.Perceived.Gender, 'Female')))
print(Num_Female_Stops)

#Bias - Yes
print(Num_Black / Num_White)
print(Num_Black_Stops / Num_White_Stops)
print(Num_Black_Force / Num_White_Force)
print(Num_Black_Shooting / Num_White_Shooting)

print(Num_Male / Num_Female)
print(Num_Male_Stops / Num_Female_Stops)
 
# 4. How are police interactions in Seattle distributed geographically across the city? Does it align with the general demographics? Or is there any bias? 
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
