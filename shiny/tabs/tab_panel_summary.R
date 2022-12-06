# tab_panel_summary

library(shiny)

tab_panel_summary <-tabPanel(
    "Summary",
    p("This is for the summary of key points."),
    h3("Findings"),
    p("Sean's findings will go here"),
    h3("Discussion"), 
    p("Allison's discussion will go here"),
    h3("Conclusion"),
    p("Madeleine's conclusion will go here")
    
)

