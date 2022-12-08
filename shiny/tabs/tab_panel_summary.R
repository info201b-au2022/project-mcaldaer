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
    p("The data from the Seattle Police Department is significant as it consists
      of various types of interactions that officers have with civilians, and 
      the patterns that have been revealed are helpful for understanding which 
      groups of people are disproportionately affected. Furthermore, those trends
      will then be helpful for policymakers and officials to implement new policies 
      and plans that will help create greater equality of treatment by police 
      officers toward the civilians. Analyzing the datasets, it is clear that 
      there are different treatments against people of different backgrounds. 
      For example, people of certain racial groups receive interactions from 
      the police, regardless of which type of interaction it is (police terry 
      stops, officer-involved shooting, uses of force), 
      much more than people of other backgrounds. Specifically, 
      in these datasets, it would be the White people and Black people. 
      However, it is important to note the differences in these two pieces 
      of data, as the White people being the most corresponds to the general
      demographics; on the other hand, for the Black people, their percentage 
      of them facing police interactions is much greater than that of the 
      percentage in the general demographics. With such revealing disparities
      in treatments toward people of different backgrounds, this could also 
      mean that there are trends in how officers within the Seattle Police 
      Department operate on their job, and could be of concern and if 
      necessary, would need to be looked into or have new policies created 
      so that they perform with less bias towards different groups of people. 
      The geographical distributions of the data is also notable, as it 
      reveals potential connections to other factors of each neighborhood 
      and community, including racial factors and if the interactions by 
      the police were justified, and could help researchers and policymakers 
      alike focus on what policies should be put into place in order to 
      lessen interactions in areas that have much more occurrences than 
      other places."),
    p("Overall, the data from the Seattle Police Department is very 
      helpful and reveals many noticeable trends that can be looked into 
      in order to create more equality in regards to police interactions with 
      civilians in the city of Seattle, WA. Although the datasets include many 
      variables and is quite complex so good analysis can be performed on them, 
      a limitation of the dataset is that much of it is self-reported by the 
      officers of the SPD themselves, which can lead to issues of bias. 
      As the datasets chosen focus on interactions that occur in Seattle,
      it would be interesting to compare the findings with other cities 
      and locations, and even on a larger scale of the entire country, 
      as there would be more implications that arise. Those trends, 
      then can once again, help with the creation of new policies to 
      reduce bias and increase equality in police interactions with 
      civilians of different backgrounds."),
    h3(em("Conclusion")),
    p("The central aim of our project was to examine racial and geographic trends 
      among Seattle Police Departments policing practices. More specifically, we 
      were interested in revealing any concerning patterns of racial or geographic 
      biases in the way that SPD interacts with Seattle residents. To accomplish 
      this, we utilized three data sets provided directly from the Seattle Police 
      Department. The datasets included records of Terry Stops, Use of Force, and 
      Officer Involved Shootings, respectively. Visualizing the data through charts 
      was a powerful way to gain additional insight from our datasets. The first chart 
      on this webpage allows users to assess the racial distribution of interactions 
      between SPD officers and Seattle residents. Using the dropdown menu, users can 
      select which dataset (Terry Stops, Use of Force, or Officer Involved Shootings) 
      to view. The pie chart produced by all three of our datasets revealed that there 
      is potential bias in SPD’s practices. While White people make up around 60% of the 
      city’s population, they represented only around 40-50% of interaction across all 
      three pie charts. Further, Black individuals were the second most interacted with, 
      despite accounting for only 7% of the city’s population. If there was no racial bias 
      present, we would expect population statistics and SPD statistics to align. We found 
      similar patterns when examining race-stratified Use of Force data. Black individuals
      had disproportionately high instances of force across all four levels of force examined. 
      In fact, for Level 3 – Use of Force, which in terms of severity is second only to Officer 
      Involved Shootings, Black individuals outnumbered all other racial groups. Finally, our 
      map revealed that a majority of Officer Involved Shootings occurred in the city center, 
      and there were very few police shootings in the whiter neighborhoods of Seattle. "), 
    p("In recent years, police violence has become a major concern in the United States. 
      Of particular concern is the fact that Black and Brown individuals are more likely 
      to be interacted with by police and subject to police violence. Our analysis revealed 
      that Seattle Police Department is contributing to the disproportionate criminalization 
      and harm of Black individuals. As discussed above, this dataset had its imperfections, 
      however being that it was provided directly from SPD, it may be the most complete record 
      available. This project has emphasized the dire need for both transparency and reform within 
      Seattle Police Department. Making high quality data available and accessible is one small 
      step in this process, and we hope that this project contributes to changing the paradigm."),
    h3(em("Acknowledgments")),
    p("Thank you to Madeleine’s friend Kathryn Reyes who pointed us towards 
      the Police Data Initiative where we were able to locate our data files.
      Thank you to our TA, Vivian Yu for support us through this project"),
    h3("References"), 
    strong("Research Citations:"), 
    p("1. Carter, M. (2022, April 12). Report: Use of force by Seattle police at all-time low, but racial disparities cloud numbers. The Seattle Times. https://www.seattletimes.com/seattle-news/law-justice/report-use-of-force-by-seattle-police-at-all-time-low-but-racial-disparities-cloud-numbers/"), 
    p("2. CampaignZero. (n.d.). Findings. Findings. Retrieved October 31, 2022, from https://policescorecard.org"), 
    p("3. National Justice Database City Report. (2021). The Science of Justice: Seattle Police Department (p. 54). Center for Policing Equity . https://spdblotter.seattle.gov/wp-content/uploads/sites/11/2021/07/SPD_CityReport_Final_1.11.21-1.pdf?utm_medium=email&utm_source=govdelivery"), 
    p("4. Seattle, washington population 2022. (n.d.). Retrieved December 8, 2022, from https://worldpopulationreview.com/us-cities/seattle-wa-population"),
    strong("Data file Citations:"), 
    p("1. Terry stops | city of seattle open data portal. (n.d.). Retrieved October 31, 2022, from https://data.seattle.gov/Public-Safety/Terry-Stops/28ny-9ts8"),
    p("2. Use of force | city of seattle open data portal. (n.d.). Seattle. Retrieved October 31, 2022, from https://data.seattle.gov/Public-Safety/Use-Of-Force/ppi5-g2bj"),
    p("3. Spd officer involved shooting (Ois) data | city of seattle open data portal. (n.d.). Retrieved October 31, 2022, from https://data.seattle.gov/Public-Safety/SPD-Officer-Involved-Shooting-OIS-Data/mg5r-efcm")
)
    

