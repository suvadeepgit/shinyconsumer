library(shiny)

shinyUI(navbarPage('BLS Analysis',
  tabPanel('By State',
  sidebarLayout(
    sidebarPanel(
      helpText("Create plot for fraction of Employments/Annual Payroll across various states in the US."),
      
      selectInput("state", 
                  label = "Choose a State to display",
                  choices = c(
                      "Alabama",             
                      "Alaska",              
                      "Arizona",             
                      "Arkansas",            
                      "California",          
                      "Colorado",            
                      "Connecticut",         
                      "Delaware",            
                      "District of Columbia",
                      "Florida",             
                      "Georgia",             
                      "Hawaii",              
                      "Idaho",               
                      "Illinois",            
                      "Indiana",             
                      "Iowa",                
                      "Kansas",              
                      "Kentucky",            
                      "Louisiana",           
                      "Maine",               
                      "Maryland",            
                      "Massachusetts",       
                      "Michigan",            
                      "Minnesota",           
                      "Mississippi",         
                      "Missouri",            
                      "Montana",             
                      "Nebraska",            
                      "Nevada",              
                      "New Hampshire",       
                      "New Jersey",          
                      "New Mexico",          
                      "New York",            
                      "North Carolina",      
                      "North Dakota",        
                      "Ohio",                
                      "Oklahoma",            
                      "Oregon",              
                      "Pennsylvania",        
                      "Rhode Island",        
                      "South Carolina",      
                      "South Dakota",        
                      "Tennessee",           
                      "Texas",               
                      "Utah",                
                      "Vermont",             
                      "Virginia",            
                      "Washington",          
                      "West Virginia",       
                      "Wisconsin",           
                      "Wyoming"                
                  ),
                  selected = "Alabama")        
        ),
    
      mainPanel(
          plotOutput("plot_Employment"),
          plotOutput("plot_Payroll")
       
      )
    )
  ),
  tabPanel('By Business Patterns',
           sidebarLayout(
             sidebarPanel(
               helpText("Create plot for fraction of Annual Payroll across various industries in the US."),
               
               selectInput("ind", 
                           label = "Choose a State to display",
                           choices = c(
                               "Agriculture, Forestry, Fishing and Hunting",                              
                               "Mining, Quarrying, and Oil and Gas Extraction",
                               "Utilities",                                                               
                               "Construction",
                               "Manufacturing",                                                           
                               "Wholesale Trade",
                               "Retail Trade",                                                            
                               "Transportation and Warehousing",
                               "Information",                                                             
                               "Finance and Insurance",
                               "Real Estate and Rental and Leasing",                                      
                               "Professional, Scientific, and Technical Services",
                               "Management of Companies and Enterprises",                                 
                               "Administrative and Support and Waste Management and Remediation Services", 
                               "Educational Services",
                               "Health Care and Social Assistance",
                               "Arts, Entertainment, and Recreation",                                     
                               "Accommodation and Food Services",
                               "Other Services (except Public Administration)"                                                                      
                           ),
                           selected = "Agriculture, Forestry, Fishing and Hunting")
               
             ),
             
             mainPanel(
               
               plotOutput("plot_Payroll_byIndustry")
             )
           )
  )       
))
