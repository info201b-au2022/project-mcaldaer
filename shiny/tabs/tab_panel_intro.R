# tab_panel_intro

library(shiny)

tab_panel_intro <-tabPanel(
    "Introduction",
    img(src = "https://upload.wikimedia.org/wikipedia/en/2/20/Seattle_Police_Logo-Badge.png", height=100, width = 100),
    h3(em("Abstract")),
    p("The primary aim of our research is to analyze trends in the ways the Seattle Police Department interacts with civilians. 
      We are particularly interested in analyzing who and where SPD most frequently makes stops, arrests, or uses the violence. 
      These questions are important because it will help us to identify racial or geographic disparities in SPD’s policing practices. 
      To address these questions we will analyze data provided by SPD related to Terry Stops, Use-of-Force, and Officer Involved Shootings (OIS)."),
    p(strong(em("Keywords:")), "police violence; seattle police department; racial justice; policing"),
    h3(em("Introduction")),
    p("Law enforcement agencies are responsible for enforcing laws, maintaining public order, and managing public safety. 
      In some situations, law enforcement officers may be allowed to use force in order to compel compliance by an unwilling 
      subject or protect themselves or the public from dangerous. In the US, the police are allowed to briefly detain a person 
      based on reasonable suspicion of criminal activity. This is called Terry stop. In our project, we will examine data from 
      the Seattle Police Department and produce visualizations about the police interactions in Seattle and their correlation 
      with race, gender, and geography. In addition to Terry Stops, we are also interested in police interactions where force 
      is used or in more serious cases, a shooting occurs. Through our analysis we hope to reveal trends about SPD's use of 
      force and potential racial or geographic biases."),
    h3(em("Problem Domain")), 
    p(strong("Framing the Problem:"),"Police violence, especially as of recent years, has become a growing concern in the United States. 
      While a majority of instances of police violence go unrecognized or unreported, those that do gain national attention often 
      spark outrage and protest amongst the general public (Police Scorecard, 2022). In the Summer of 2020, protests of this nature 
      reached a peak following the unjust murder of George Floyd by Minneapolis Police Officer, Derek Chauvin (Carter, 2022). The 
      city of Seattle became a hotspot for these demonstrations and gained nationwide media attention. While protests were sparked 
      by the national movement against police brutality, these events also drew attention to local problems within the Seattle Police 
      Department (Carter, 2022). Although the Seattle Times reported use of force by SPD has decreased substantially since the violent 
      2020 protests, findings from the Police Scorecard project show that there is still major work to be done within the SPD. Compared 
      to other U.S. cities with populations >400,000, the SPD ranks 12th in terms of police shootings and 10th in terms of less lethal 
      uses of force. Further, the project found SPD to exhibit more racial disparities in deadly force than 67% of U.S police departments 
      (Police Scorecard, 2022). Key findings from a 2021 Center for Policing Equity report also support the idea that SPD exhibits 
      concerning racial biases in their policing. With these facts in mind, we hope to both analyze and visualize data made available by 
      the SPD to examine the department’s self-reported use of force, racial disparities and the general trends of interaction between officers and civilians."),
    p(strong("Human Values:"), "The primary human values that are relevant to this project include equity and justice. We hope to reveal sources of racial 
    inequity or bias within SPD’s policing practices in order to bring light to the problem and work towards a more just and equitable future."),
    p(strong("Who is at Stake?")), 
    p(em("Direct:"), "Police officers and departments, community members that have had interactions with police, government officials who may use this data to make policy decisions"),
    p(em("Indirect:"), "Community members who may feel effects of policing, families of individuals who have been affected by biased policing or police violence."),
    p(strong("Harms and Benefits:")),
    p(em("Benefits:"), "This report has the potential to draw attention to troubling policing trends within the Seattle Police Department. The conclusions made in this 
      report could then be used as evidence to lobby for policing reforms that could reduce disparities and address biases within the department. Calling attention to 
      and intervening on trends of violence within SPD can make our communities safer, less violent, and increase social cohesion by bolstering trust between community members 
      and law enforcement."),
    p(em("Harms:"), "Inaccurate or incomplete data has the potential to harm community members by resulting in false or inaccurate conclusions. Faulty conclusions may in 
      turn lead policymakers or police departments to take the wrong actions, (or no action at all), in addressing problems concerning policing. Even with accurate data, 
      well-intentioned, thought-out interventions may have unintended consequences or limitations that fail to address the problem or worse, exacerbate existing disparities or biases. 
      For example, requiring officers to wear bodycams so that interactions are recorded can help increase accountability. However, this intervention only works if police actually 
      wear and utilize cameras as intended, and make recording easily available."),
    h3(em("Research Questions:")),
    p(strong("1. What kinds of interactions or violence occur between police and civilians? What are the most common ones?")), 
    p("The question is important because civilians in Seattle should get informed about what kind of treatment they could get by the police when they are reasonably suspicious of criminal activity."),
    p(strong("2. How are police interactions in Seattle distributed across race and gender? Does it align with the general demographics? Or is there any bias?")),
    p("Obviously, it is important that there should be no discrimination across race or gender. With analysis of general demographics in Seattle, 
      we could check whether the distribution of police interactions goes along with the general demographics of race and gender. 
      Then we would be able to figure out whether SPD discriminates against certain groups of people in their interactions."), 
    p(strong("3. How are police interactions in Seattle distributed geographically across the city? Does it align with the general demographics? Or is there any bias?")), 
    p("This question will reveal where in the city there is high frequency of police interaction. It is important because it can help us understand where SPD may be 
      over- or under-policing, and may also reveal policing biases related to race or other factors. With analysis of general demographics in Seattle, 
      we could check whether the distribution of police interactions goes along with the general demographics of geography. If there are deviations, 
      we might conclude that there are other biases that affect the result."), 
    h3(em("Provenance of Dataset")), 
    p("We found our datasets through the Police Data Initiative, which is a “law enforcement community of practice” that is committed to improving public 
      safety through accountability and the sharing of data. The project is funded by the U.S. Department of Justice through the Office of Community 
      Oriented Policing Services. The website serves as a platform that enables users to access publicly released data directly from participating 
      law enforcement agencies. The data portrayed in our chosen datafiles was provided directly by Seattle Police officers involved in the reported 
      incidents. While this data comes directly from the source we are interested in analyzing (Seattle Police Department), and may very well be the 
      most complete record available, it should not be interpreted as being a complete truth or without faults. We acknowledge that although this may 
      be the best available record of the data we seek to analyze, it may not be entirely credible or free from bias due to the nature of self-reporting. 
      Please see our limitations section for more information regarding the data’s limitations."),
    p("Each dataset contains varying amounts of data from varying timeframes. The Terry Stops and Use-of-Force datasets continue to be updated, however 
      the Officer Involved Shootings set has not been updated since August of 2020. Some records within each set are incomplete, and thus could be missing 
      key features like the date the incident occurred or the race of the subject involved. While officers may be required to engage in some sort of internal 
      validation process, there is no publicly available description surrounding the validation of the represented data.")
)


# h5(strong("General demographics in Seattle:")),
# p("White: 65.81%"),
# p("Asian: 16.31%"),
# p("Two or more races: 7.64%"),
# p("Black or African American: 7.06%"),
# p("Other race: 2.38%"),
# p("Native American: 0.54%"),
# p("Native Hawaiian or Pacific Islander: 0.26%"),
# p(em("The data is from: https://worldpopulationreview.com/us-cities/seattle-wa-population")),
# 
