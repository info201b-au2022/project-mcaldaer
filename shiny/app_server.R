library(ggplot2)
library(shiny)

server <- function(input, output) {
  #Madeleine's server fxns here:
  
  output$map <- renderPlotly({
    
    raw_OIS <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-mcaldaer/main/data/SPD_Officer_Involved_Shooting__OIS__Data.csv")
    
    Year <-  substring(raw_OIS$Date...Time, 7,10)
    
    raw_OIS$Year <- Year
    
    OIS <- raw_OIS %>% 
      filter(City == "Seattle") %>% 
      select(Longitude, Latitude, Year, Subject.Race, Fatal, Disposition) %>% 
      rename(lat = Latitude, long = Longitude, Subject_Race = Subject.Race, Justified = Disposition) %>% 
      filter(Year <= max(input$date_range)) %>%
      filter(Year >= min(input$date_range))
    # View(OIS)
    
    seattle <- qmap("seattle", zoom = 11, source = "stamen", maptype = "toner")

    ggplotly(seattle +
               geom_point(data = OIS, mapping = aes_string(x = "long", y = "lat", color = input$map_var)) +
               scale_color_brewer(palette = "Set2")
    )
  })
  
  
  #Allison's server fxns here:
  
  plot1 <- reactive({
    pie_chart_stops <- plot_ly(data, labels = ~`Perceived Race`, values = ~value, type = 'pie') %>%
      layout(title = 'Police Terry Stops by Race')
  })
  plot2 <- reactive({
    pie_chart_shootings <- plot_ly(data2, labels = ~`Perceived Race`, values = ~value, type = 'pie') %>%
      layout(title = 'Officer Involved Shootings by Race')
  })
  plot3 <- reactive({
    pie_chart_force <- plot_ly(data3, labels = ~`Perceived Race`, values = ~value, type = 'pie') %>%
      layout(title = 'Officer Use of Force by Race')
  })
  # Return the requested graph with switch function from: https://stackoverflow.com/questions/48312392/shiny-allow-users-to-choose-which-plot-outputs-to-display
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
  
  output$barchart <- renderPlotly({
    
    df <- UOF %>% 
      filter(Incident_Type == input$type)
    
    ggplotly(ggplot(df, aes(x = Subject_Race)) +
      geom_bar(fill = "#0c2d6a") +
      labs(title = paste0("Race Involved in ", input$type), x = "Subject Race", y = "Count") +
      coord_flip() 
    )
  })
}
