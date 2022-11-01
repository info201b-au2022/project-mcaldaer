# Characterizing Seattle Police Department's (SPD) Civilian Interactions: Project Proposal
### Madeleine Clarke, Allison Huang, Sean Kim, Ivy Li
#### INFO-201: Technical Foundations of Informatics - The Information School - University of Washington
#### Autumn 2022


*Code name:* SAMI

# ***Project title***

### ***Abstract:***
Write a short abstract of three sentences. Your abstract should summarize your entire project, but only the very most important aspects. Here are two examples of how you might structure your abstract: **(1)** "Our main question is .... This question is important because .... To address the question, we will ...." and **(2)** "We are concerned with ..., because .... To address this concern, we plan to ...." |

***Keywords:*** police violence; seattle police department; racial justice; policing

### ***Introduction:***
Briefly introduce your project. (About 150 words.)

### ***Problem Domain:***
**The Problem:** Police violence, especially as of recent years, has become a growing concern in the United States. While a majority of instances of police violence go unrecognized or unreported, those that do gain national attention often spark outrage and protest amongst the general public (Police Scorecard, 2022). In the Summer of 2020, protests of this nature reached a peak following the unjust murder of George Floyd by Minneapolis Police Officer, Derek Chauvin (Carter, 2022). The city of Seattle became a hotspot for these demonstrations and gained nationwide media attention. While protests were sparked by the national movement against police brutality, these events also drew attention to local problems within the Seattle Police Department (Carter, 2022). Although the Seattle Times reported use of force by SPD has decreased substantially since the violent 2020 protests, findings from the Police Scorecard project show that there is still major work to be done within the SPD. Compared to other U.S. cities with populations >400,000, the SPD ranks 12th in terms of police shootings and 10th in terms of less lethal uses of force. Further, the project found SPD to exhibit more racial disparities in deadly force than 67% of U.S police departments (Police Scorecard, 2022). Key findings from a 2021 Center for Policing Equity report also support the idea that SPD exhibits concerning racial biases in their policing. With these facts in mind, we hope to both analyze and visualize data made available by the SPD to examine the department's self-reported use of force, racial disparities and the general trends of interaction between officers and civilians.

**Who is at Stake?**  
- _Direct_: Police officers and departments, community members that have had interactions with police, government officials who may use this data to make policy decisions
- _Indirect_:  Community members who may feel effects of policing, families of individuals who have been affected by biased policing or police violence.

**Harms and Benefits:**
- _Benefits_: This report has the potential to draw attention to troubling policing trends within the Seattle Police Department. The conclusions made in this report could then be used as evidence to lobby for policing reforms that could reduce disparities and address biases within the department. Calling attention to and intervening on trends of violence within SPD can make our communities safer, less violent, and increase social cohesion by bolstering trust between community members and law enforcement.
- _Harms_: Inaccurate or incomplete data has the potential to harm community members by resulting in false or inaccurate conclusions. Faulty conclusions may in turn lead policymakers or police departments to take the wrong actions, (or no action at all), in addressing problems concerning policing. Even with accurate data, well-intentioned, thought-out interventions may have unintended consequences or limitations that fail to address the problem or worse, exacerbate existing disparities or biases. For example, requiring officers to wear bodycams so that interactions are recorded can help increase accountability. However, this intervention only works if police actually wear and utilize cameras as intended, and make recording easily available.



### ***Research Questions:***
Present your 3-5 research questions.  You should present each research question.  For each research question, you should discuss why it is important and what motivates the question. (About 50 words for each question, so for four questions you would write about 200 words or more if needed.)

### ***The Dataset:***

**(1) Problem Domain and Our Dataset:**
We have chosen three datasets gathered from the Police Data Initiative to conduct our analysis. The three files contain data representing Terry Stops (aka Stop and Frisk interactions), Use of Force, and Officer Involved Shootings (OIS) respectively, carried out by the Seattle Police Department. All three datasets contain a variable (column) for the date the incident occurred, the perceived racial identities of the subjects, and to varying degrees, the location and a description of the interaction. The information stored in these data files will allow us to analyze trends surrounding the racial and geographic distribution of non-violent and violent interactions between SPD officers and civilians, as well as general trends about police interactions and use-of-force within SPD. Using racial data, we can assess whether racial groups experience differential frequencies of arrests, uses of forces, or fatalities at the hands of SPD officers.



**(2) Data file specs:**

|Data file name|# of Observations|# of Features|
|-|-|-|
|Terry Stops|53,684|23|
|Use of Force|1,337|11|
|Officer Involved Shootings (OIS)|156|35|

**(3) Citations:**
<br/> **1.** Terry stops | city of seattle open data portal. (n.d.). Retrieved October 31, 2022, from https://data.seattle.gov/Public-Safety/Terry-Stops/28ny-9ts8
<br/> **2.** Use of force | city of seattle open data portal. (n.d.). Seattle. Retrieved October 31, 2022, from https://data.seattle.gov/Public-Safety/Use-Of-Force/ppi5-g2bj
<br/> **3.** Spd officer involved shooting (Ois) data | city of seattle open data portal. (n.d.). Retrieved October 31, 2022, from https://data.seattle.gov/Public-Safety/SPD-Officer-Involved-Shooting-OIS-Data/mg5r-efcm

**(4) Provenance of Dataset:**
We found our datasets through the Police Data Initiative, which is a “law enforcement community of practice” that is committed to improving public safety through accountability and the sharing of data. The project is funded by the U.S. Department of Justice through the Office of Community Oriented Policing Services. The website serves as a platform that enables users to access publicly released data directly from participating law enforcement agencies. The data portrayed in our chosen datafiles was provided directly by Seattle Police officers involved in the reported incidents. While this data comes directly from the source we are interested in analyzing (Seattle Police Department), and may very well be the most complete record available, it should not be interpreted as being a complete truth or without faults. We acknowledge that although this may be the best available record of the data we seek to analyze, it may not be entirely credible or free from bias due to the nature of self-reporting. _Please see our limitations section for more information regarding the data’s limitations_.

Each dataset contains varying amounts of data from varying timeframes. The Terry Stops and Use-of-Force datasets continue to be updated, however the Officer Involved Shootings set has not been updated since August of 2020. Some records within each set are incomplete, and thus could be missing key features like the date the incident occurred or the race of the subject involved. While officers may be required to engage in some sort of internal validation process, there is no publicly available description surrounding the validation of the represented data.


### ***Expected Implications:***
Proposal only. Assuming you answer your research questions, briefly describe the expected or possible implications for technologists, designers, and policymakers. (About 150 words.)

### ***Limitations:***
Proposal only. What limitations might you need to address? Briefly discuss. (About 150 words.)

### ***Acknowledgements:***
Thank you to my friend Kathryn Reyes who pointed us towards the [Police Data Initiative](https://www.policedatainitiative.org/) where we were able to locate our data files.


### ***References:***
- **Research Citations:**
<br/> **1.** Carter, M. (2022, April 12). Report: Use of force by Seattle police at all-time low, but racial disparities cloud numbers. The Seattle Times. https://www.seattletimes.com/seattle-news/law-justice/report-use-of-force-by-seattle-police-at-all-time-low-but-racial-disparities-cloud-numbers/
<br/> **2.** CampaignZero. (n.d.). Findings. Findings. Retrieved October 31, 2022, from https://policescorecard.org
<br/> **3.** National Justice Database City Report. (2021). The Science of Justice: Seattle Police Department (p. 54). Center for Policing Equity . https://spdblotter.seattle.gov/wp-content/uploads/sites/11/2021/07/SPD_CityReport_Final_1.11.21-1.pdf?utm_medium=email&utm_source=govdelivery
- **Data file Citations:**
<br/> **1.** Terry stops | city of seattle open data portal. (n.d.). Retrieved October 31, 2022, from https://data.seattle.gov/Public-Safety/Terry-Stops/28ny-9ts8
<br/> **2.** Use of force | city of seattle open data portal. (n.d.). Seattle. Retrieved October 31, 2022, from https://data.seattle.gov/Public-Safety/Use-Of-Force/ppi5-g2bj
<br/> **3.** Spd officer involved shooting (Ois) data | city of seattle open data portal. (n.d.). Retrieved October 31, 2022, from https://data.seattle.gov/Public-Safety/SPD-Officer-Involved-Shooting-OIS-Data/mg5r-efcm


***Appendix A:*** Do you have questions for your TA or instructor?  Include them here.
