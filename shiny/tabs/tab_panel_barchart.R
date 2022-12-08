# tab_panel_chart1

library(shiny)
library(ggplot2)
library(dplyr)

UOF <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-mcaldaer/main/data/Use_Of_Force.csv")
# View(UOF)

tab_panel_barchart <-tabPanel(
  "Use of Force",
  h2("Use of Force - Stratified by Race"),
  sidebarLayout(
    sidebarPanel(selectInput("type", label = "Incident Type", 
                             choices = c("Level 1 - Use of Force", "Level 2 - Use of Force", "Level 3 - Use of Force", "Level 3 - OIS"))
    ), 
    mainPanel(plotlyOutput("barchart"),
              p("This visualization shows the subject race by Use of Force incident types. The incident types involve Level 1: force causing 
                transitory pain or the complaint of transitory pain, and Level 2: force causing physical injury greater than transitory pain 
                but less than great or substantial bodily harm. Additionally, Level 3 is considered force causing great bodily harm, substantial bodily 
                harm, loss of consciousness, or death, and OIS means that an Officer Involved Shooting took place. This barchart is included to compare 
                the distribution of race involved in different types of force.")
    )
  )
)
