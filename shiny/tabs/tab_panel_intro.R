# tab_panel_intro

library(shiny)

tab_panel_intro <-tabPanel(
    "Introduction",
    img(src = "https://upload.wikimedia.org/wikipedia/en/2/20/Seattle_Police_Logo-Badge.png", height=100, width = 100),
    h4(strong("Introduction")),
    p("Law enforcement agencies are responsible for enforcing laws, maintaining public order, and managing public safety. 
      In some situations, law enforcement officers may be allowed to use force in order to compel compliance by an unwilling 
      subject or protect themselves or the public from dangerous. In the US, the police are allowed to briefly detain a person 
      based on reasonable suspicion of criminal activity. This is called Terry stop. In our project, we will examine data from 
      the Seattle Police Department and produce visualizations about the police interactions in Seattle and their correlation 
      with race, gender, and geography. In addition to Terry Stops, we are also interested in police interactions where force 
      is used or in more serious cases, a shooting occurs. Through our analysis we hope to reveal trends about SPD's use of 
      force and potential racial or geographic biases."),
    h5(strong("General demographics in Seattle:")),
    p("White: 65.81%"),
    p("Asian: 16.31%"),
    p("Two or more races: 7.64%"),
    p("Black or African American: 7.06%"),
    p("Other race: 2.38%"),
    p("Native American: 0.54%"),
    p("Native Hawaiian or Pacific Islander: 0.26%"),
    p(em("The data is from: https://worldpopulationreview.com/us-cities/seattle-wa-population"))
)

