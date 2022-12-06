# tab_panel_report

library(shiny)
library("markdown")

tab_panel_report <-tabPanel(
  "Report (not sure if we'll use this)",

  fluidRow(
    includeMarkdown("tabs/p01-proposal copy.md")
    )
  )


