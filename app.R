library(shiny)

ui <- navbarPage(title = "Bias in Climate Change",
                 
    tabPanel(title = "National Political Trends")
             
      fluidPage(
        div(img(src = 'map.png', align='left', height = '500px', width = '700px')), style="text-align: center;",
        
      
 
        div(img(src = 'pp.png', align='right', height = '500px', width = '700px'))), style="text-align: center;"

    ),
    
    navbarMenu("Alaska",
    
               tabPanel("State trends",
                    
                    tabsetPanel(type = "tabs",
                                tabPanel("Overview", 
                                         fluidPage(
                                            div(img(src = 'AK.png', align='center', height = '300px', width = '1500px')), style="text-align: center;")),
                                  
                                tabPanel("Seasonality",
                                         sidebarLayout(
                                           sidebarPanel(
                                             
                                             selectInput("AKdataset", "Daily temperature type:",
                                                         choices = c("Daily min" = "dailymin", 
                                                                     "Daily max" = "dailymax")),
                                             radioButtons("AKSeason", "Season",
                                                          c("Overall" = "Overall",
                                                            "Spring" = "Spring",
                                                            "Summer" = "Summer",
                                                            "Fall" = "Fall",
                                                            "Winter" = "Winter"))),
                                            
                                           mainPanel(
                                             plotOutput("image1")
                                           ))),
                                         
                                tabPanel("Word Frequency",
                                         fluidPage(
                                           div(img(src = 'AK_wordfreq.png', align='center', height = '500px', width = '1000px')), style="text-align: center;"))
                        
      )),
                
               tabPanel("Juneau",
                        
                        tabsetPanel(type = "tabs",
                                    tabPanel("Overview", 
                                             fluidPage(
                                               div(img(src = 'Juneau.png', align='center', height = '300px', width = '1500px')), style="text-align: center;")),
                                    
                                    tabPanel("Seasonality",
                                             sidebarLayout(
                                               sidebarPanel(
                                                 
                                                 selectInput("JUdataset", "Daily temperature type:",
                                                             choices = c("Daily min" = "dailymin", 
                                                                         "Daily max" = "dailymax")),
                                                 radioButtons("JUSeason", "Season",
                                                              c("Overall" = "Overall",
                                                                "Spring" = "Spring",
                                                                "Summer" = "Summer",
                                                                "Fall" = "Fall",
                                                                "Winter" = "Winter"))),
                                               
                                               mainPanel(
                                                 plotOutput("image6")
                                               ))),
                                    
                                    tabPanel("Word Frequency",
                                             fluidPage(
                                               div(img(src = 'Juneau_wordfreq.png', align='center', height = '500px', width = '1000px')), style="text-align: center;"))
                                    
                        )),
               
               tabPanel("Fairbanks",
                        
                        tabsetPanel(type = "tabs",
                                    tabPanel("Overview", 
                                             fluidPage(
                                               div(img(src = 'Fairbanks.png', align='center', height = '300px', width = '1500px')), style="text-align: center;")),
                                    
                                    tabPanel("Seasonality",
                                             sidebarLayout(
                                               sidebarPanel(
                                                 
                                                 selectInput("FAdataset", "Daily temperature type:",
                                                             choices = c("Daily min" = "dailymin", 
                                                                         "Daily max" = "dailymax")),
                                                 radioButtons("FASeason", "Season",
                                                              c("Overall" = "Overall",
                                                                "Spring" = "Spring",
                                                                "Summer" = "Summer",
                                                                "Fall" = "Fall",
                                                                "Winter" = "Winter"))),
                                               
                                               mainPanel(
                                                 plotOutput("image7")
                                               ))),
                                    
                                    tabPanel("Word Frequency",
                                             fluidPage(
                                               div(img(src = 'Fairbanks_wordfreq.png', align='center', height = '500px', width = '1000px')), style="text-align: center;"))
                                    
                        )),
      tabPanel("Kodiak",
               
               tabsetPanel(type = "tabs",
                           tabPanel("Overview", 
                                    fluidPage(
                                      div(img(src = 'Kodiak.png', align='center', height = '300px', width = '1500px')), style="text-align: center;")),
                           
                           tabPanel("Seasonality",
                                    sidebarLayout(
                                      sidebarPanel(
                                        selectInput("KOdataset", "Daily temperature type:",
                                                    choices = c("Daily min" = "dailymin", 
                                                                "Daily max" = "dailymax")),
                                        radioButtons("KOSeason", "Season",
                                                     c("Overall" = "Overall",
                                                       "Spring" = "Spring",
                                                       "Summer" = "Summer",
                                                       "Fall" = "Fall",
                                                       "Winter" = "Winter"))),
                                      
                                      mainPanel(
                                        plotOutput("image8")
                                      ))),
                           
                           tabPanel("Word Frequency",
                                    fluidPage(
                                      div(img(src = 'Kodiak_wordfreq.png', align='center', height = '500px', width = '1000px')), style="text-align: center;"))
                           
               ))
      
    ),
    navbarMenu("California",
               tabPanel("State trends",
                        tabsetPanel(type = "tabs",
                                    tabPanel("Overview", 
                                             fluidPage(
                                               div(img(src = 'CA.png', align='center', height = '300px', width = '1500px')), style="text-align: center;")),
                                    
                                    tabPanel("Seasonality",
                                             sidebarLayout(
                                               sidebarPanel(
                                                 
                                                 selectInput("CAdataset", "Daily temperature type:",
                                                             choices = c("Daily min" = "dailymin", 
                                                                         "Daily max" = "dailymax")),
                                                 radioButtons("CASeason", "Season",
                                                              c("Overall" = "Overall",
                                                                "Spring" = "Spring",
                                                                "Summer" = "Summer",
                                                                "Fall" = "Fall",
                                                                "Winter" = "Winter"))),
                                               
                                               mainPanel(
                                                 plotOutput("image9")
                                               ))),
                                    
                                    tabPanel("Word Frequency",
                                             fluidPage(
                                               div(img(src = 'CA_wordfreq.png', align='center', height = '500px', width = '1000px')), style="text-align: center;"))
                                    
                        )),
               tabPanel("Los Angeles",
                        
                        tabsetPanel(type = "tabs",
                                    tabPanel("Overview", 
                                             fluidPage(
                                               div(img(src = 'Los_Angeles.png', align='center', height = '300px', width = '1500px')), style="text-align: center;")),
                                    
                                    tabPanel("Seasonality",
                                             sidebarLayout(
                                               sidebarPanel(
                                                 
                                                 selectInput("LAdataset", "Daily temperature type:",
                                                             choices = c("Daily min" = "dailymin", 
                                                                         "Daily max" = "dailymax")),
                                                 radioButtons("LASeason", "Season",
                                                              c("Overall" = "Overall",
                                                                "Spring" = "Spring",
                                                                "Summer" = "Summer",
                                                                "Fall" = "Fall",
                                                                "Winter" = "Winter"))),
                                               
                                               mainPanel(
                                                 plotOutput("image10")
                                               ))),
                                    
                                    tabPanel("Word Frequency",
                                             fluidPage(
                                               div(img(src = 'Los_Angeles_wordfreq.png', align='center', height = '500px', width = '1000px')), style="text-align: center;"))
                                    
                        )),
               tabPanel("Sacramento",
                        
                        tabsetPanel(type = "tabs",
                                    tabPanel("Overview", 
                                             fluidPage(
                                               div(img(src = 'Sacramento.png', align='center', height = '300px', width = '1500px')), style="text-align: center;")),
                                    
                                    tabPanel("Seasonality",
                                             sidebarLayout(
                                               sidebarPanel(
                                                 
                                                 selectInput("SAdataset", "Daily temperature type:",
                                                             choices = c("Daily min" = "dailymin", 
                                                                         "Daily max" = "dailymax")),
                                                 radioButtons("SASeason", "Season",
                                                              c("Overall" = "Overall",
                                                                "Spring" = "Spring",
                                                                "Summer" = "Summer",
                                                                "Fall" = "Fall",
                                                                "Winter" = "Winter"))),
                                               
                                               mainPanel(
                                                 plotOutput("image11")
                                               ))),
                                    
                                    tabPanel("Word Frequency",
                                             fluidPage(
                                               div(img(src = 'Sacramento_wordfreq.png', align='center', height = '500px', width = '1000px')), style="text-align: center;"))
                                    
                        )),
               tabPanel("Berkeley",
                        
                        tabsetPanel(type = "tabs",
                                    tabPanel("Overview", 
                                             fluidPage(
                                               div(img(src = 'Berkeley.png', align='center', height = '300px', width = '1500px')), style="text-align: center;")),
                                    
                                    tabPanel("Seasonality",
                                             sidebarLayout(
                                               sidebarPanel(
                                                 
                                                 selectInput("BEdataset", "Daily temperature type:",
                                                             choices = c("Daily min" = "dailymin", 
                                                                         "Daily max" = "dailymax")),
                                                 radioButtons("BESeason", "Season",
                                                              c("Overall" = "Overall",
                                                                "Spring" = "Spring",
                                                                "Summer" = "Summer",
                                                                "Fall" = "Fall",
                                                                "Winter" = "Winter"))),
                                               
                                               mainPanel(
                                                 plotOutput("image12")
                                               ))),
                                    
                                    tabPanel("Word Frequency",
                                             fluidPage(
                                               div(img(src = 'Berkeley_wordfreq.png', align='center', height = '500px', width = '1000px')), style="text-align: center;"))
                                    
                        ))
    ),
    navbarMenu("Massachusetts",
               
               tabPanel("State trends",
                        
                        tabsetPanel(type = "tabs",
                                    tabPanel("Overview", 
                                             fluidPage(
                                               div(img(src = 'MA.png', align='center', height = '300px', width = '1500px')), style="text-align: center;")),
                                    
                                    tabPanel("Seasonality",
                                             sidebarLayout(
                                               sidebarPanel(
                                                 selectInput("MAdataset", "Daily temperature type:",
                                                             choices = c("Daily min" = "dailymin", 
                                                                         "Daily max" = "dailymax")),
                                                 radioButtons("MASeason", "Season",
                                                              c("Overall" = "Overall",
                                                                "Spring" = "Spring",
                                                                "Summer" = "Summer",
                                                                "Fall" = "Fall",
                                                                "Winter" = "Winter"))),
                                               
                                               mainPanel(
                                                 plotOutput("image5")
                                               ))),
                                    
                                    tabPanel("Word Frequency",
                                             fluidPage(
                                               div(img(src = 'MA_wordfreq.png', align='center', height = '500px', width = '1000px')), style="text-align: center;"))
                                    
                        )),
               
               tabPanel("Boston",
                        tabsetPanel(type = "tabs",
                                    tabPanel("Overview", 
                                             fluidPage(
                                               div(img(src = 'Boston.png', align='center', height = '300px', width = '1500px')), style="text-align: center;")),
                                    tabPanel("Seasonality",
                                             sidebarLayout(
                                               sidebarPanel(
                                                 selectInput("BOdataset", "Daily temperature type:",
                                                             choices = c("Daily min" = "dailymin", 
                                                                         "Daily max" = "dailymax")),
                                                 radioButtons("BO_Season", "Season",
                                                              c("Overall" = "Overall",
                                                                "Spring" = "Spring",
                                                                "Summer" = "Summer",
                                                                "Fall" = "Fall",
                                                                "Winter" = "Winter"))),
                                             mainPanel(
                                               imageOutput("image2")
                                             ))),
                                    tabPanel("Word Frequency",
                                             fluidPage(
                                               div(img(src = 'Boston_wordfreq.png', align='center', height = '500px', width = '1000px')), style="text-align: center;"))
                        )),
               
               tabPanel("Brockton",
                        tabsetPanel(type = "tabs",
                                    tabPanel("Overview", 
                                             fluidPage(
                                               div(img(src = 'Brockton.png', align='center', height = '300px', width = '1500px')), 
                                               style="text-align: center;")),
                                    tabPanel("Seasonality",
                                             sidebarLayout(
                                               sidebarPanel(
                                                 selectInput("BRdataset", "Daily temperature type:",
                                                             choices = c("Daily min" = "dailymin", 
                                                                         "Daily max" = "dailymax")),
                                                 radioButtons("BR_Season", "Season",
                                                              c("Overall" = "Overall",
                                                                "Spring" = "Spring",
                                                                "Summer" = "Summer",
                                                                "Fall" = "Fall",
                                                                "Winter" = "Winter"))),
                                               mainPanel(
                                                 imageOutput("image3")
                                               ))),
                                    tabPanel("Word Frequency",
                                             fluidPage(
                                               div(img(src = 'Brockton_wordfreq.png', align='center', height = '500px', width = '1000px')), style="text-align: center;"))
                        )),
               
               tabPanel("Worcester",
                        
                        tabsetPanel(type = "tabs",
                                    tabPanel("Overview", 
                                             fluidPage(
                                               div(img(src = 'Worcester.png', align='center', height = '300px', width = '1500px')), 
                                               style="text-align: center;")),
                                    tabPanel("Seasonality",
                                             sidebarLayout(
                                               sidebarPanel(
                                                 selectInput("WOdataset", "Daily temperature type:",
                                                             choices = c("Daily min" = "dailymin", 
                                                                         "Daily max" = "dailymax")),
                                                 radioButtons("WO_Season", "Season",
                                                              c("Overall" = "Overall",
                                                                "Spring" = "Spring",
                                                                "Summer" = "Summer",
                                                                "Fall" = "Fall",
                                                                "Winter" = "Winter"))),
                                               mainPanel(
                                                 imageOutput("image4")
                                               ))),
                                    
                                    tabPanel("Word Frequency",
                                             fluidPage(
                                               div(img(src = 'Worcester_wordfreq.png', align='center', height = '500px', width = '1000px')), style="text-align: center;"))
                                    
                        ))),
 
    navbarMenu("Texas",
                 tabPanel("State trends",
                          tabsetPanel(type = "tabs",
                                      tabPanel("Overview", 
                                               fluidPage(
                                                 div(img(src = 'TX.png', align='center', height = '300px', width = '1500px')), 
                                                 style="text-align: center;")),
                                      tabPanel("Seasonality",
                                               sidebarLayout(
                                                 sidebarPanel(
                                                   selectInput("TXdataset", "Daily temperature type:",
                                                               choices = c("Daily min" = "dailymin", 
                                                                           "Daily max" = "dailymax")),
                                                   radioButtons("TXSeason", "Season",
                                                                c("Overall" = "Overall",
                                                                  "Spring" = "Spring",
                                                                  "Summer" = "Summer",
                                                                  "Fall" = "Fall",
                                                                  "Winter" = "Winter"))),
                                                 mainPanel(
                                                   imageOutput("image13")
                                                 ))),
                                      tabPanel("Word Frequency",
                                               fluidPage(
                                                 div(img(src = 'TX_wordfreq.png', align='center', height = '500px', width = '1000px')), style="text-align: center;"))
                          )),
                 tabPanel("Dallas",
                          tabsetPanel(type = "tabs",
                                      tabPanel("Overview", 
                                               fluidPage(
                                                 div(img(src = 'Dallas.png', align='center', height = '300px', width = '1500px')), 
                                                 style="text-align: center;")),
                                      tabPanel("Seasonality",
                                               sidebarLayout(
                                                 sidebarPanel(
                                                   selectInput("DAdataset", "Daily temperature type:",
                                                               choices = c("Daily min" = "dailymin", 
                                                                           "Daily max" = "dailymax")),
                                                   radioButtons("DASeason", "Season",
                                                                c("Overall" = "Overall",
                                                                  "Spring" = "Spring",
                                                                  "Summer" = "Summer",
                                                                  "Fall" = "Fall",
                                                                  "Winter" = "Winter"))),
                                                 mainPanel(
                                                   imageOutput("image14")
                                                 ))),
                                      tabPanel("Word Frequency",
                                               fluidPage(
                                                 div(img(src = 'Dallas_wordfreq.png', align='center', height = '500px', width = '1000px')), style="text-align: center;"))
                          )),
                 tabPanel("Houston",
                          tabsetPanel(type = "tabs",
                                      tabPanel("Overview", 
                                               fluidPage(
                                                 div(img(src = 'Houston.png', align='center', height = '300px', width = '1500px')), 
                                                 style="text-align: center;")),
                                      tabPanel("Seasonality",
                                               sidebarLayout(
                                                 sidebarPanel(
                                                   selectInput("HOdataset", "Daily temperature type:",
                                                               choices = c("Daily min" = "dailymin", 
                                                                           "Daily max" = "dailymax")),
                                                   radioButtons("HOSeason", "Season",
                                                                c("Overall" = "Overall",
                                                                  "Spring" = "Spring",
                                                                  "Summer" = "Summer",
                                                                  "Fall" = "Fall",
                                                                  "Winter" = "Winter"))),
                                                 mainPanel(
                                                   imageOutput("image15")
                                                 ))),
                                      tabPanel("Word Frequency",
                                               fluidPage(
                                                 div(img(src = 'Houston_wordfreq.png', align='center', height = '500px', width = '1000px')), style="text-align: center;"))
                          )),
                 tabPanel("San Antonio",
                          tabsetPanel(type = "tabs",
                                      tabPanel("Overview", 
                                               fluidPage(
                                                 div(img(src = 'San_Antonio.png', align='center', height = '300px', width = '1500px')), 
                                                 style="text-align: center;")),
                                      tabPanel("Seasonality",
                                               sidebarLayout(
                                                 sidebarPanel(
                                                   selectInput("SOdataset", "Daily temperature type:",
                                                               choices = c("Daily min" = "dailymin", 
                                                                           "Daily max" = "dailymax")),
                                                   radioButtons("SOSeason", "Season",
                                                                c("Overall" = "Overall",
                                                                  "Spring" = "Spring",
                                                                  "Summer" = "Summer",
                                                                  "Fall" = "Fall",
                                                                  "Winter" = "Winter"))),
                                                 mainPanel(
                                                   imageOutput("image16")
                                                 ))),
                                      tabPanel("Word Frequency",
                                               fluidPage(
                                                 div(img(src = 'San_Antonio_wordfreq.png', align='center', height = '500px', width = '1000px')), style="text-align: center;"))
                          ))
                          
        ),
   
    navbarMenu("More",
               tabPanel("About",
                  mainPanel(
                    h1("Abstract", align = "center"),
                    p("This project observes confirmation bias, which is the tendency to seek information 
                       that supports preexisting beliefs. Specifically, I am looking at how weather trends 
                       and political leanings of each state impact how often climate change is mentioned in 
                       social media, specifically Twitter. Understanding confirmation bias, especially 
                       within our country and in regards to a relevant topic, sheds insight on how bias 
                       impacts interpretation of information. My hypothesis expects that Democratic-leaning 
                       states will tweet about climate change more during warm weather while Republican-leaning 
                       states will tweet about climate change more during cool weather."),
                    h1("Data Sources", align = "center"),
                    p("Political leaning is based on how each state, and their counties, voted in 
                      the 2016 Presidential election. Although this is not a perfect way to gauge political 
                      affiliation, I wanted to dedicate a majority of my efforts on the Twitter and weather 
                      data."),
                    br(),
                    p("Weather data came from the National Oceanic and Atmospheric Administration (NOAA) 
                      and included temperature minimums and maximums for everyday in the last 2 years. I took a 
                      simply average between the minimum and maximum in order to display weather trends. Taking 
                      this average is not a perfect measure of weather, but given the limited data available it 
                      serves its purpose."),
                    br(),
                    p("The Twitter data contained information about tweet content, location, 
                      and creation date. The considered Tweets had climate change related terms and hashtags, 
                      such global warming, climate denial, and climate science. Then, the tweets were organized 
                      based on city and sorted by date."),
                    h1("Understanding Error", align = "center"),
                    p("Talk abut error"),
                    h1("Acknowledgments", align = "center"),
                    p("Acknowledgements here....")
                  )),
               tabPanel("Methodology"),
               tabPanel("Citations")
))

server <- function(input, output) {
  
  output$image2 <- renderImage({
    filename <- normalizePath(file.path('./www',
                                        paste('Boston_', input$BO_Season,'_', input$BOdataset,'.png', sep='')))
    list(src = filename, align='center', height = '500px', width = '800px')
  }, deleteFile = FALSE)
  
  output$image3 <- renderImage({
    filename <- normalizePath(file.path('./www',
                                        paste('Brockton_', input$BR_Season,'_', input$BRdataset,'.png', sep='')))
    list(src = filename, align='center', height = '500px', width = '800px')
  }, deleteFile = FALSE)
  
  output$image4 <- renderImage({
    filename <- normalizePath(file.path('./www',
                                        paste('Worcester_', input$WO_Season,'_', input$WOdataset,'.png', sep='')))
    list(src = filename, align='center', height = '500px', width = '800px')
  }, deleteFile = FALSE)
  
  output$image1 <- renderImage({
    filename <- normalizePath(file.path('./www',
                                        paste('AK_', input$AKSeason,'_', input$AKdataset,'.png', sep='')))
    list(src = filename, align='center', height = '500px', width = '800px')
  }, deleteFile = FALSE)
  
  output$image5 <- renderImage({
    filename <- normalizePath(file.path('./www',
                                        paste('MA_', input$MASeason,'_', input$MAdataset,'.png', sep='')))
    list(src = filename, align='center', height = '500px', width = '800px')
  }, deleteFile = FALSE)
  
  output$image6 <- renderImage({
    filename <- normalizePath(file.path('./www',
                                        paste('Juneau_', input$JUSeason,'_', input$JUdataset,'.png', sep='')))
    list(src = filename, align='center', height = '500px', width = '800px')
  }, deleteFile = FALSE)
  
  output$image7 <- renderImage({
    filename <- normalizePath(file.path('./www',
                                        paste('Fairbanks_', input$FASeason,'_', input$FAdataset,'.png', sep='')))
    list(src = filename, align='center', height = '500px', width = '800px')
  }, deleteFile = FALSE)
  
  output$image8 <- renderImage({
    filename <- normalizePath(file.path('./www',
                                        paste('Kodiak_', input$KOSeason,'_',input$KOdataset,'.png', sep='')))
    list(src = filename, align='center', height = '500px', width = '800px')
  }, deleteFile = FALSE)
  
  output$image9 <- renderImage({
    filename <- normalizePath(file.path('./www',
                                        paste('CA_', input$CASeason,'_',input$CAdataset,'.png', sep='')))
    list(src = filename, align='center', height = '500px', width = '800px')
  }, deleteFile = FALSE)
  
  output$image10 <- renderImage({
    filename <- normalizePath(file.path('./www',
                                        paste('Los_Angeles_', input$LASeason,'_',input$LAdataset,'.png', sep='')))
    list(src = filename, align='center', height = '500px', width = '800px')
  }, deleteFile = FALSE)
  
  output$image11 <- renderImage({
    filename <- normalizePath(file.path('./www',
                                        paste('Sacramento_', input$SASeason,'_',input$SAdataset,'.png', sep='')))
    list(src = filename, align='center', height = '500px', width = '800px')
  }, deleteFile = FALSE)
  
  output$image12 <- renderImage({
    filename <- normalizePath(file.path('./www',
                                        paste('Berkeley_', input$BESeason,'_',input$BEdataset,'.png', sep='')))
    list(src = filename, align='center', height = '500px', width = '800px')
  }, deleteFile = FALSE)
  
  output$image13 <- renderImage({
    filename <- normalizePath(file.path('./www',
                                        paste('TX_', input$TXSeason,'_',input$TXdataset,'.png', sep='')))
    list(src = filename, align='center', height = '500px', width = '800px')
  }, deleteFile = FALSE)
  
  output$image14 <- renderImage({
    filename <- normalizePath(file.path('./www',
                                        paste('Dallas_', input$DASeason,'_',input$DAdataset,'.png', sep='')))
    list(src = filename, align='center', height = '500px', width = '800px')
  }, deleteFile = FALSE)
  
  output$image15 <- renderImage({
    filename <- normalizePath(file.path('./www',
                                        paste('Houston_', input$HOSeason,'_',input$HOdataset,'.png', sep='')))
    list(src = filename, align='center', height = '500px', width = '800px')
  }, deleteFile = FALSE)
  
  output$image16 <- renderImage({
    filename <- normalizePath(file.path('./www',
                                        paste('San_Antonio_', input$SOSeason,'_',input$SOdataset,'.png', sep='')))
    list(src = filename, align='center', height = '500px', width = '800px')
  }, deleteFile = FALSE)
  
  
} 

shinyApp(ui = ui, server = server)

