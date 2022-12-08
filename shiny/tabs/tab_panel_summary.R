# tab_panel_summary

library(shiny)

tab_panel_summary <-tabPanel(
    "Summary and Conclusion",
    h3(em("Findings")),
    p("Three main takeaways"),
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

