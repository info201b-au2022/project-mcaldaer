#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

server <- function(input, output) {
    #Madeleine's server fxns here:
  
  
  
   #Allison's server fxns here:
  
  plot1 <- reactive({
    # this should be a complete plot image,
    # e.g. ggplot(data, aes(x=x, y=y)) + geom_line()
    pie_chart_stops <- plot_ly(data, labels = ~`Perceived Race`, values = ~value, type = 'pie') %>%
      layout(title = 'Police Terry Stops by Race')
  })
  plot2 <- reactive({
    # this should be a complete plot image,
    # e.g. ggplot(data, aes(x=x, y=y)) + geom_line()
    pie_chart_shootings <- plot_ly(data2, labels = ~`Perceived Race`, values = ~value, type = 'pie') %>%
      layout(title = 'Officer Involved Shootings by Race')
  })
  plot3 <- reactive({
    # this should be a complete plot image,
    # e.g. ggplot(data, aes(x=x, y=y)) + geom_line()
    pie_chart_force <- plot_ly(data3, labels = ~`Perceived Race`, values = ~value, type = 'pie') %>%
      layout(title = 'Officer Use of Force by Race')
  })
  # Return the requested graph: https://stackoverflow.com/questions/48312392/shiny-allow-users-to-choose-which-plot-outputs-to-display
  graphInput <- reactive({
    switch(input$police_interaction_type,
           "Police Terry Stops" = plot1(),
           "Officer-Involved Shooting" = plot2(),
           "Use of Force" = plot3()
    )
  })
  output$piechart <- renderPlotly({ 
    graphInput()
  })
  
   #Sean's server fxns here: 
}


