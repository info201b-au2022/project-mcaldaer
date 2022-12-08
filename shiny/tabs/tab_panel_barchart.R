# tab_panel_chart1

library(shiny)
library(ggplot2)
library(dplyr)

UOF <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-mcaldaer/main/data/Use_Of_Force.csv")
# View(UOF)

tab_panel_barchart <-tabPanel(
  "Use of Force",
  h2("Subject Race by Incident Type"),
  sidebarLayout(
    sidebarPanel(selectInput("type", label = "Incident Type", 
                             choices = c("Level 1 - Use of Force", "Level 2 - Use of Force", "Level 3 - Use of Force", "Level 3 - OIS")), 
    ), 
    mainPanel(plotlyOutput("barchart"),
              hr(),
              p("Summary"))
  )
)


