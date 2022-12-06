#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

source("tabs/tab_panel_intro.R")
source("tabs/tab_panel_barchart.R")
source("tabs/tab_panel_piechart.R")
source("tabs/tab_panel_map.R")
source("tabs/tab_panel_summary.R")
source("tabs/tab_panel_report.R")

ui <- navbarPage(
  title = "Police Interactions in Seattle",
  position = "fixed-top",

  # A simple header
  header = list(
    tags$style(type = "text/css", "body {padding-top: 35px;}"),
    hr(),
    HTML("Characterizing Seattle Police Department's Civillian Interactions"),
    hr()
  ),

  # A simple footer
  footer = list(
    tags$style(type = "text/css", "body {padding-top: 35px;}"),
    hr(),
    HTML("Final Project | Madeleine Clarke, Allison Huang, Sean Kim, Ivy Li | INFO 201 | Autumn 2022 | "),
    hr()
  ),

  # The project introduction
  tab_panel_intro,

  # The three charts
  tab_panel_barchart,
  tab_panel_piechart,
  tab_panel_map,

  # The project summary
  tab_panel_summary,

  # The project report
  tab_panel_report
)
