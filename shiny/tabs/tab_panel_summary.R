# tab_panel_summary

library(shiny)

tab_panel_summary <-tabPanel(
    "Summary and Conclusion",
    h3(em("Findings")),
    p("The goal of our project was to examine data from the Seattle Police Department and produce visualizations about the police interactions in Seattle and their correlation with race and geography. 
      Our research questions were 'What kinds of interactions or violence occur between police and civilians? What are the most common ones?', 'How are police interactions in Seattle distributed across race and gender? Does it align with the general demographics? Or is there any bias?', and 'How are police interactions in Seattle distributed geographically across the city? Does it align with the general demographics? Or is there any bias?'. 
      From the bar chart that shows the distribution of race involved in different types, we were able to find out that the proportion of black people involved in Use of Force is much larger than that in general demographics. 
      Moreover, the race that is involved the most in level 3, the highest level of force, was Black or African American. 
      This gives an idea to our first and second research question. 
      The answer to the first research question would be level 1 Use of Force which is force that causes transitory pain or the complaint of transitory pain. 
      With the findings from the bar chart, the second question could also be answered partially. 
      White and black people are the major races involved in police interactions, and it does not align with the general demographics as the proportion of black people much larger than the general demographics as stated above. 
      From the pie chart that displays the perceived races of the people that are stopped by police, we were able to find out that people of the perceived race of White is the group that is stopped the most by police. 
      This pie chart gave us a complete answer to the second question, which was partially answered by the bar chart. 
      For the White people, the groups seem to correspond, with the group being the largest demographic in Seattle, and also being the group that recieves the most interactions from the police regardless of the type of interaction. 
      However, it did not align with black people. 
      29.71% of black people was stopped by police, 36.1% of black people encountered use of force by officers, while they only compose of 7.06% of the population of the city of Seattle. 
      From our last chart, the map that plots the most extreme form of police violence Officer Involved Shootings, we were able to find out that  a large cluster of shootings occurred in the city center, in Downtown Seattle and the surrounding areas. 
      We also observed that shootings lacked in North Seattle like Ballard, Fremont, Magnolia and Queen Anne as well as the neighborhood of Madison Park. 
      These findings gave us answer to our last question. 
      The distribution of police interactions in Seattle does not align with the general demographics, as there was absence of shootings in some of the wealthier neighborhoods in the city. 
      "),
    h3(em("Discussion: Implications & Limitations")),
    p("Consider recycling info in the implications & limitations section"),
    p("Allison's discussion will go here"),
    h3(em("Conclusion")),
    p("Madeleine's conclusion will go here"), 
    h3(em("Acknowledgments")),
    p("Thank you to Madeleine’s friend Kathryn Reyes who pointed us towards 
      the Police Data Initiative where we were able to locate our data files.
      Thank you to our TA, Vivian Yu for support us through this project"),
    h3("References")
)
