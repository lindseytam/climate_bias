library(shiny)

ui <- navbarPage(title = "Bias in Climate Change",
                 
                 tabPanel(title = "About",
                          mainPanel(
                            h1("It's cold outside.", br(), "Therefore, climate change isn't real."),br(), br(),
                            p("This project observes confirmation bias, which is the tendency to seek information 
                       that supports preexisting beliefs. Specifically, I am looking at how weather trends 
                       and political leanings impact how often climate change is mentioned in 
                       social media, specifically Twitter. Understanding confirmation bias, especially 
                       within our country and in regards to a relevant topic, sheds insight on how bias 
                       impacts interpretation of information. In addition to looking at state trends, I will also be looking
                       into cities. Comparing the relationship between city and state trends can be interesting,
                       especially in cases where the political leaning of the two differ.
                       My hypothesis expects that Democratic-leaning 
                       states and cities will tweet about climate change more during warm weather while Republican-leaning 
                       states and cities will tweet about climate change more during cool weather."))
                          
                 ), 
                 
                 navbarMenu("National Trends",
                 tabPanel(title = "Political Leaning",
                          fluidPage(
                            div(span(img(src = 'politic.png', align='right', height = '600px', width = '800px'))), 
                             br(), br(), br(), br(), br(), br(),
                            "Both of these graphs visualize the political leaning of every state. The graph to the right indicates the 
                            proportion of votes for each candidate in 5 political party. There were more than 5 political parties competing 
                            in the election, but these were the five major parties. Gaps in the graph arr intentional and reflect votes 
                            that were for political parties outside of the five observed. One can clearly see that the two major parties were
                            Democrats and Republicans. Therefore, political leaning will be gauged on how strong a state leans toward the
                            Democratic or Republic party.",
                            br(), br(),
                            "Arguably, the election results of a single year is not neccessarily the strongest indication of political prefernce.
                              However, I believe it strongly reflects public opinion on the topic of climate change. 
                              The issue of climate change has become increasingly controversial over the years. Furthermore, climate change 
                              was a major point of contention between the two major political parties. Therefore, 
                              I believe using the reults of the 2016 presidential elections reflects a general attitude towards this topic.
                              Of course, stance on climate change is not the only factor that caused a state to vote for a 
                              particular candidate or political party, but 
                              considering the topic was heavily discussed in the election, it seems appropriate to make this assumption.", 
                            style="text-align: left;",
                            br(), 
                            div(span(img(src = 'map.png', align='left', height = '600px', width = '800px'))), 
                            br(), br(), br(), br(), br(), br(), br(), br(), br(), br(), 
                            br(), 
                            "Similar to the visualization above, the graph to the left is a map that displays political 
                            preference by state, with blues 
                            representing support for the Democratic party and the reds representing support for the 
                            Republican party. However, unlike the visualization above, this graph more clearly displays the strength of 
                            political leaning, as expressed through color opacity, with darker colors having strong support and lighter 
                            colors having weaker support. 
                            Characterizing strength of political preference was calculated using z-scores. 
                            Z-scores are values that represent how close data is to the mean, with low z scores indicating values 
                            that are close to the mean and high z scores indicating values farther away from the mean.
                            Political leaning was strong when the absolute value of the z-score was above 1.",
                            br(), br(),
                            "An interesting realization that emerged as a result of these visualizations is understanding state 
                              preference can be drastically different than city preference. Initially, I wanted to simply look 
                              at the voting preference of each capital as an indicator of state 
                              preference because I believed that the capital would be a strong representation of the state. 
                              I quickly realized that was not the case with all states. For example, Califonia has strong Democratic 
                              leanings, yet its capital Sacramento had a majority vote for the Republican canidate. Therefore, 
                              when looking into state trends, I tried choosing large cities (which also corresponds to more 
                              interesting twitter trends and more thorough weather information) that had varied political preferences.",
                            br(), br(),
                            style="text-align: right;",
                          br(), br(), br(), br()

                 )),
                 tabPanel(title = "Word Frequency",
                 fluidPage(
                   div(span(img(src = 'heatmap.png', align='center', height = '500px', width = '1800px'))),
                   
                   "This visualization is a heatmap comparing how frquently a climate change related key word is used in
                   each state. The annotated values are 'normalized tweet count by hour', which is the value that corresponds 
                   to how many tweets containing the keyword are created, on average, for any given hour. More information can be shown in
                   'Normalizing Value' under the Methodology tab.", br(), br(),
                   "California generates the most climate change related tweets, with the most common word used being climate. 
                   Climate is also used frquently in New York. In fact, after California, New York and Texas tweet about climate change
                   the second and third most. The term 'pollutionair quality' was a typo; therefore, it is expected that
                   all values are zero. all values in 'normalized tweet count by hour' were rounded by 2. Because of this, some of the 0 values
                   are not neccessarily 0, but are very small.", br(), br(),
                   "I was very surprised that there were so few results for hashtags terms (key words with no spaces between them). 
                   Examples of these terms include: climatedenial and climateemergency. When looking
                   at climate change tweets online, these terms came up alot so it is surprising that almost all states have a value
                   of 0 (or close to) for these terms.",
                   style="text-align: left;"
                   ))),
                 
                 navbarMenu("Alaska",
                            
                            tabPanel("State trends",
                                     
                                     tabsetPanel(type = "tabs",
                                                 tabPanel("Overview", 
                                                          fluidPage(
                                                            div(img(src = 'AK.png', align='center', height = '300px', width = '1500px')), 
                                                            br(), br(), br(),
                                                            "Alaska has a strong Republican leaning, so I would assume that climate change related tweets occur more
                                                            in cold weather. On further analysis, there seems to be a weak positive correlation between 
                                                            temperature extremes and twitter count. 
                                                            In general, climate change related tweets seem to occur slightly more during the fall season; if the hypothesis were true,
                                                            we would proabbly have expected it to occur more during the winter.
                                                            In terms of temperature extremes, the largest fluctuation occurs in Januruary 2018, but there does not seem
                                                            to be a drastic increase in tweet count in response to this weather anomaly.
                                                            ", br(), br(),
                                                            "Interestingly, one of the highest tweet counts occurred in December 7, 2017 in response to abnormally high winter
                                                            temperature readings. One can see that the temperature during this time was not the highest temperature 
                                                            Alaska has seen, but it looks siginifcantly higher than other winter trends. 
                                                            This actually somewhat disproves the hypothesis that tweets would occur more in cooler weather.",
                                                            br(), br(),
                                                            "For December 28, 2017, I believe that the spike in tweet count is attributed to the drop in weather. 
                                                            In general 2017 marked a year of record high temperatures as well as record low temperatures. From the weather data, one
                                                            can see that overall winter trends on December 2017 were high, but tapered down toward the end. The tweet increase could
                                                            have been a response to the sharp temperature decline. An alternative theory is that the increase is attributed to President Trump's 
                                                            Twitter comment regarding climate change.", br(), br(),
                                                            "Alaska was chosen for two major reasons. Firstly, it is has a strong Republican leaning, and secondly it's climate is one
                                                            of the most impacted by climate change. Therefore, I expected it to have a very strong response to this issue. This did not end up 
                                                            being the case, which is an interesting occurence.",
                                                            br(), br(),
                                                            "In all there is not a clear relationship between weather trends and twitter counts. If anything, twitter counts seem to be more related
                                                            to national events rather than the weather.",
                                                            style="text-align: left;"),
                                                          style="text-align: left;",
                                                          mainPanel(hr(),
                                                                    p(a(href="https://www.nytimes.com/2017/12/13/climate/climate-newsletter.html", "December 7, 2017:"), "Weather temperatures are so high, computers reject readings",
                                                                      align='left'),
                                                                    p(a(href="https://twitter.com/realdonaldtrump/status/946531657229701120?lang=en", "December 28, 2017:"), "Donald Trump Tweets about climate change",
                                                                      align='left'),
                                                                    p(a(href="https://www.nytimes.com/2019/09/20/climate/global-climate-strike.html", "September 20, 2019:"), " Climate change strike 3 days before UN summit",
                                                                      align='left')
                                                                    
                                                          )),
                                                 
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
                                                              plotOutput("image1"), br(),br(), br(),br(), br(),br()
                                                              #textOutput("text1")
                                                        
                                                            ))),
                                                 
                                                 tabPanel("Word Frequency",
                                                          fluidPage(
                                                            div(img(src = 'AK_wordfreq.png', align='center', height = '500px', width = '1000px')), 
                                                            br(), br(), br(), br(),
                                                            #"TALK MORE HERE",
                                                            style="text-align: center;"))
                                                 
                                     )),
                            
                            tabPanel("Juneau",
                                     
                                     tabsetPanel(type = "tabs",
                                                 tabPanel("Overview", 
                                                          fluidPage(
                                                            div(img(src = 'Juneau.png', align='center', height = '300px', width = '1500px')),
                                                            br(), br(), br(), br(),
                                                            "Though Alaska is strongly Republican, Juneau has a history of being Democratic leaning. 
                                                            In the last election, the Republican candidate recieved a majority vote of 52.8 as compared 
                                                            to the Democratic votes of 35.1%.",
                                                            br(), br(),
                                                            "Based on scatterplot information, the relationship between tweet count and seasonality is very weak. 
                                                            There does not seem to be a significant relationship between weather and tweet count.", br(), br(),
                                                            "Other than September 20, 2019, I cannot find any other relevant national events that could have caused
                                                            spikes in twitter counts.",
                                                    
                                                            style="text-align: left;"),
                                                          mainPanel(hr(),
                                                                    p(a(href="https://www.nytimes.com/2019/09/20/climate/global-climate-strike.html", "September 20, 2019:"), " Climate change strike 3 days before UN summit",
                                                                      align='left')
                                                          )),
                                                 
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
                                                              plotOutput("image6"), br(),br(), br(),br(), br(),br()
                                                              #textOutput("text6") 
                                                            ))),
                                                 
                                                 tabPanel("Word Frequency",
                                                          fluidPage(
                                                            div(img(src = 'Juneau_wordfreq.png', align='center', height = '500px', width = '1000px')),
                                                            br(), br(), br(), br(),
                                                            #"TALK MORE HERE",
                                                            style="text-align: center;"))
                                                 
                                     )),
                            
                            tabPanel("Fairbanks",
                                     
                                     tabsetPanel(type = "tabs",
                                                 tabPanel("Overview", 
                                                          fluidPage(
                                                            div(img(src = 'Fairbanks.png', align='center', height = '300px', width = '1500px')),
                                                            br(), br(), br(), br(),
                                                            "Similar to Alaska, Fairbanks is Republican leaningm with 51.4% voting for the Republican candidate and 
                                                            36.6% voting for the Democratic candidate.",
                                                            style="text-align: left;"),
                                                          mainPanel(hr(),
                                                                    p(a(href="https://www.nytimes.com/2017/12/13/climate/climate-newsletter.html", "December 7, 2017:"), "Weather temperatures are so high, computers reject readings",
                                                                      align='left')
                                                          )),
                                                 
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
                                                              plotOutput("image7"), br(),br(), br(),br(), br(),br()
                                                              #textOutput("text7") 
                                                            ))),
                                                 
                                                 tabPanel("Word Frequency",
                                                          fluidPage(
                                                            div(img(src = 'Fairbanks_wordfreq.png', align='center', height = '500px', width = '1000px')),
                                                            br(), br(), br(), br(),
                                                            #"TALK MORE HERE",
                                                            style="text-align: center;"))
                                                 
                                     )),
                            tabPanel("Kodiak",
                                     
                                     tabsetPanel(type = "tabs",
                                                 tabPanel("Overview", 
                                                          fluidPage(
                                                            div(img(src = 'Kodiak.png', align='center', height = '300px', width = '1500px')),
                                                            br(), br(), br(), br(),
                                                            "Kodiak was chosen, because historically it was slightly left leaning. In the
                                                            2016 presidential election, Kodiak actually had 41.5% support for the Democratic party and 45.4% for the 
                                                            Republican party. I believed this could shed interesting results regarding weather and climate change related
                                                            tweets. However, that proved to not be the case.",
                                                            br(), br(),
                                                            "In hindsight, this was not an effective city to look it. Based on the two instance of climate chnage related
                                                            tweets, it is not obvious of there is any weather relationship. Interestingly, the two tweet instances both occured
                                                            in the winter, with no tweets in any other season. However, given the extremely limited sample size,
                                                            all results drawn are inconclusive.",
                                                            style="text-align: left;"),
                                                          mainPanel(hr(),
                                                                    p(a(href="https://twitter.com/realdonaldtrump/status/946531657229701120?lang=en", "December 28, 2017:"), "Donald Trump Tweets about climate change",
                                                                      align='left')
                                                          )),
                                                 
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
                                                              plotOutput("image8"), br(),br(), br(),br(), br(),br()
                                                              #textOutput("text8") 
                                                            ))),
                                                 
                                                 tabPanel("Word Frequency",
                                                          fluidPage(
                                                            div(img(src = 'Kodiak_wordfreq.png', align='center', height = '500px', width = '1000px')),
                                                            br(), br(), br(), br(),
                                                            #"TALK MORE HERE",
                                                            style="text-align: center;"))
                                                 
                                     ))
                            
                 ),
                 navbarMenu("California",
                            tabPanel("State trends",
                                     tabsetPanel(type = "tabs",
                                                 tabPanel("Overview", 
                                                          fluidPage(
                                                            div(img(src = 'CA.png', align='center', height = '300px', width = '1500px')),
                                                            br(), br(), br(), br(),
                                                            "California was chosen because it is strongly Democratic and tweets about climate change the most.", br(), br(),
                                                            "There does not seem to be a seasonal variation in tweet counts.", br(), br(),
                                                            "Many of the spikes in tweet count seem to be due to national events as opposed to weather trends.",
                                                            style="text-align: left;"),
                                                          mainPanel(hr(),
                                                                    p(a(href="https://twitter.com/realdonaldtrump/status/946531657229701120?lang=en", "December 28, 2017:"), "Donald Trump Tweets about climate change",
                                                                      align='left'),
                                                                    p(a(href="https://www.nytimes.com/2019/09/20/climate/global-climate-strike.html", "September 13, 2018:"), " California Climate Talks",
                                                                      align='left'),
                                                                    #https://www.nytimes.com/2018/09/13/climate/california-climate-summit-protests.html
                                                                    p(a(href="https://www.nytimes.com/2019/09/20/climate/global-climate-strike.html", "September 20, 2019:"), " Climate change strike 3 days before UN summit",
                                                                      align='left')
                                                          )),
                                                 
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
                                                              plotOutput("image9"), br(),br(), br(),br(), br(),br()
                                                              #textOutput("text9") 
                                                            ))),
                                                 
                                                 tabPanel("Word Frequency",
                                                          fluidPage(
                                                            div(img(src = 'CA_wordfreq.png', align='center', height = '500px', width = '1000px')),
                                                            br(), br(), br(), br(),
                                                            #"TALK MORE HERE",
                                                            style="text-align: center;"))
                                                 
                                     )),
                            tabPanel("Los Angeles",
                                     
                                     tabsetPanel(type = "tabs",
                                                 tabPanel("Overview", 
                                                          fluidPage(
                                                            div(img(src = 'Los_Angeles.png', align='center', height = '300px', width = '1500px')),
                                                            br(), br(), br(), br(),
                                                            "Los Angeles is strongly Democratic, with 71.8% voting for the Democratic candidate, 
                                                            and 22.4% voting for the Republican candidate.", br(), br(),
                                                            "Every single spike in tweet count is accounted for in terms of national events. Unlike other cities thus far, 
                                                            Los Angeles has been impacted by several natural disasters (fires), which resulted in more spikes than other
                                                            cities.", br(), br(),
                                                            "Interestingly, in July through August 2018, there seems to be some relationship between temperature and tweet count. 
                                                            There were two extremely hot days had a spike in tweeet count. However, it is also possible that this was caused by chance.",
                                                            br(), br(),
                                                            "There does seem to be any seasonal variation in tweet count.",
                                                            style="text-align: left;"),
                                                          mainPanel(hr(),
                                                                    p(a(href="https://twitter.com/realdonaldtrump/status/946531657229701120?lang=en", "December 28, 2017:"), "Donald Trump Tweets about climate change",
                                                                      align='left'),
                                                                    p(a(href="https://www.nytimes.com/2019/09/20/climate/global-climate-strike.html", "September 13, 2018:"), " California Climate Talks",
                                                                      align='left'),
                                                                    p(a(href="https://www.nytimes.com/2019/09/20/climate/global-climate-strike.html", "November 11, 2018:"), " Woolsey Fires",
                                                                      align='left'),
                                                                    p(a(href="https://www.nytimes.com/2019/09/20/climate/global-climate-strike.html", "February 21, 2019:"), " Snows in Hollywood",
                                                                      align='left'),
                                                                    p(a(href="https://www.latimes.com/world/la-fg-germany-worldwide-climate-change-20190328-story.html", "March 15, 2019:"), " Global climate change strikes",
                                                                      align='left'),
                                                                    p(a(href="https://www.nytimes.com/2019/09/20/climate/global-climate-strike.html", "September 20, 2019:"), " Climate change strike 3 days before UN summit",
                                                                      align='left'),
                                                                    p(a(href="https://www.latimes.com/california/story/2019-11-01/maria-fire-drone-hinders-firefighting-efforts-as-blaze-doubles-in-size-overnight", "November 1, 2019:"), " Maria Fires",
                                                                      align='left')
                                                                  
                                                          )),
                                                
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
                                                              plotOutput("image10"), br(),br(), br(),br(), br(),br()
                                                              #textOutput("text10") 
                                                            ))),
                                                 
                                                 tabPanel("Word Frequency",
                                                          fluidPage(
                                                            div(img(src = 'Los_Angeles_wordfreq.png', align='center', height = '500px', width = '1000px')),br(), br(), br(), br(),
                                                            #"TALK MORE HERE",
                                                            style="text-align: center;"))
                                                 
                                     )),
                            tabPanel("Sacramento",
                                     
                                     tabsetPanel(type = "tabs",
                                                 tabPanel("Overview", 
                                                          fluidPage(
                                                            div(img(src = 'Sacramento.png', align='center', height = '300px', width = '1500px')),
                                                            br(), br(), br(), br(),
                                                            "Sacremento is the capital of California and shares a similar Democratic political. In the 2016 election, 
                                                             58% of votes were for the Democratic candidate and 33.8% were for the Republican candidate.", br(), br(),
                                                            "Climate change related tweets increase slightly around the fall, but I believe this is because many of the
                                                            national events coincidentally occurred during this time.", br(), br(),
                                                            "Once again, it seems like there is no weather correlation. Instead, national events are strongly related
                                                            with increases in tweet count.",
                                                            style="text-align: left;"),
                                                          mainPanel(hr(),
                                                                    p(a(href="https://www.energy.ca.gov/sites/default/files/2019-07/Reg%20Report-%20SUM-CCCA4-2018-002%20%20SacramentoValley.pdf", "August 27, 2018:"), "Sacramento Valley Region Report",
                                                                      align='left'),
                                                                    p(a(href="https://www.nytimes.com/2019/02/14/world/europe/uk-climate-change-student-protest.html", "February 14, 2019:"), " Global Climate change strike",
                                                                      align='left'),
                                                                    p(a(href="https://www.nytimes.com/2019/09/20/climate/global-climate-strike.html", "September 20, 2019:"), " Climate change strike 3 days before UN summit",
                                                                      align='left')
                                                          )),
                                                 
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
                                                              plotOutput("image11"), br(),br(), br(),br(), br(),br()
                                                             # textOutput("text11") 
                                                            ))),
                                                 
                                                 tabPanel("Word Frequency",
                                                          fluidPage(
                                                            div(img(src = 'Sacramento_wordfreq.png', align='center', height = '500px', width = '1000px')),
                                                            br(), br(), br(), br(),
                                                            #"TALK MORE HERE",
                                                            style="text-align: center;"))
                                                 
                                     )),
                            tabPanel("Berkeley",
                                     
                                     tabsetPanel(type = "tabs",
                                                 tabPanel("Overview", 
                                                          fluidPage(
                                                            div(img(src = 'Berkeley.png', align='center', height = '300px', width = '1500px')),br(), br(), br(), br(),
                                                            "Berkeley is liberal leaning.",
                                                            style="text-align: left;"),
                                                          mainPanel(hr(),
                                                                    p(a(href="https://www.nytimes.com/2019/09/20/climate/global-climate-strike.html", "September 20, 2019:"), " Climate change strike 3 days before UN summit",
                                                                      align='left')
                                                          )),
                                                 
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
                                                              plotOutput("image12"), br(),br(), br(),br(), br(),br()
                                                              #textOutput("text12") 
                                                            ))),
                                                 
                                                 tabPanel("Word Frequency",
                                                          fluidPage(
                                                            div(img(src = 'Berkeley_wordfreq.png', align='center', height = '500px', width = '1000px')),
                                                            br(), br(), br(), br(),
                                                            #"TALK MORE HERE",
                                                            style="text-align: center;"))
                                                 
                                     ))
                 ),
                 navbarMenu("Massachusetts",
                            
                            tabPanel("State trends",
                                     
                                     tabsetPanel(type = "tabs",
                                                 tabPanel("Overview", 
                                                          fluidPage(
                                                            div(img(src = 'MA.png', align='center', height = '300px', width = '1500px')),
                                                            br(), br(), br(), br(),
                                                            "Massachusetts has a weak Democratic leaning", br(), br(),
                                                            "In hindsight, I should have included more Republican leaning cities.",
                                                            style="text-align: left;"),
                                                          mainPanel(hr(),
                                                                    p(a(href="https://twitter.com/realdonaldtrump/status/946531657229701120?lang=en", "December 28, 2017:"), "Donald Trump Tweets about climate change",
                                                                      align='left'),
                                                                    p(a(href="https://www.nytimes.com/2019/09/20/climate/global-climate-strike.html", "September 20, 2019:"), " Climate change strike 3 days before UN summit",
                                                                      align='left')
                                                          )),
                                                 
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
                                                              plotOutput("image5"), br(),br(), br(),br(), br(),br()
                                                              #textOutput("text5") 
                                                            ))),
                                                 
                                                 tabPanel("Word Frequency",
                                                          fluidPage(
                                                            div(img(src = 'MA_wordfreq.png', align='center', height = '500px', width = '1000px')),
                                                            br(), br(), br(), br(),
                                                            #"TALK MORE HERE",
                                                            style="text-align: center;"))
                                                 
                                     )),
                            
                            tabPanel("Boston",
                                     tabsetPanel(type = "tabs",
                                                 tabPanel("Overview", 
                                                          fluidPage(
                                                            div(img(src = 'Boston.png', align='center', height = '300px', width = '1500px')),
                                                            br(), br(), br(), br(),
                                                            "Boston is strongly liberal with 78.4% voting Democrat and 16.1% voting Republican,",
                                                            style="text-align: left;"),
                                                          mainPanel(hr(),
                                                                    p(a(href="https://www.nytimes.com/2019/09/20/climate/global-climate-strike.html", "September 20, 2019:"), " Climate change strike 3 days before UN summit",
                                                                      align='left')
                                                          )),
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
                                                              imageOutput("image2"), br(),br(), br(),br(), br(),br()
                                                              #textOutput("text2") 
                                                            ))),
                                                 tabPanel("Word Frequency",
                                                          fluidPage(
                                                            div(img(src = 'Boston_wordfreq.png', align='center', height = '500px', width = '1000px')),
                                                            br(), br(), br(), br(),
                                                            #"TALK MORE HERE",
                                                            style="text-align: center;"))
                                     )),
                            
                            tabPanel("Brockton",
                                     tabsetPanel(type = "tabs",
                                                 tabPanel("Overview", 
                                                          fluidPage(
                                                            div(img(src = 'Brockton.png', align='center', height = '300px', width = '1500px')), 
                                                            br(), br(), br(), br(),
                                                            "Brockton is Democratic leaning; Roughly 50% voted Democrat and 42.5% voted Republican in the last election. ",
                                                            style="text-align: left;"),
                                                          mainPanel(hr(),
                                                                    p(a(href="https://www.nytimes.com/2019/09/20/climate/global-climate-strike.html", "September 20, 2019:"), " Climate change strike 3 days before UN summit",
                                                                      align='left')
                                                          )),
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
                                                              imageOutput("image3"), br(),br(), br(),br(), br(),br()
                                                              #textOutput("text3") 
                                                            ))),
                                                 tabPanel("Word Frequency",
                                                          fluidPage(
                                                            div(img(src = 'Brockton_wordfreq.png', align='center', height = '500px', width = '1000px')),
                                                            br(), br(), br(), br(),
                                                            #"TALK MORE HERE",
                                                            style="text-align: center;"))
                                     )),
                            
                            tabPanel("Worcester",
                                     
                                     tabsetPanel(type = "tabs",
                                                 tabPanel("Overview", 
                                                          fluidPage(
                                                            div(img(src = 'Worcester.png', align='center', height = '300px', width = '1500px')), 
                                                            br(), br(), br(), br(),
                                                            "Similar to Massachusetts, Worcester is liberal leanings. In the 2016 election, 51.% voted Democrat
                                                            and 41% voted Republican.",
                                                            style="text-align: left;"),
                                                          mainPanel(hr(),
                                                                    p(a(href="https://www.nytimes.com/2019/09/20/climate/global-climate-strike.html", "September 20, 2019:"), " Climate change strike 3 days before UN summit",
                                                                      align='left')
                                                          )),
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
                                                              imageOutput("image4"), br(),br(), br(),br(), br(),br()
                                                              #textOutput("text4") 
                                                            ))),
                                                 
                                                 tabPanel("Word Frequency",
                                                          fluidPage(
                                                            div(img(src = 'Worcester_wordfreq.png', align='center', height = '500px', width = '1000px')), 
                                                            br(), br(), br(), br(),
                                                            #"TALK MORE HERE",
                                                            style="text-align: center;"))
                                                 
                                     ))),
                 
                 navbarMenu("Texas",
                            tabPanel("State trends",
                                     tabsetPanel(type = "tabs",
                                                 tabPanel("Overview", 
                                                          fluidPage(
                                                            div(img(src = 'TX.png', align='center', height = '300px', width = '1500px')), 
                                                            br(), br(), br(), br(),
                                                            "Texas has a slight Republican leaning.", br(), br(),
                                                            "For this state, I chose cities based on population size.Unbeknownst to me at the
                                                            time, all of the cities are chose were liberal leaning. In hindight, I should have
                                                            included more Republican leaning cities",
                                                            style="text-align: left;"),
                                                          mainPanel(hr(),
                                                                    p(a(href="https://twitter.com/realdonaldtrump/status/946531657229701120?lang=en", "December 28, 2017:"), "Donald Trump Tweets about climate change",
                                                                      align='left'),
                                                                    p(a(href="https://www.nytimes.com/2019/09/20/climate/global-climate-strike.html", "September 20, 2019:"), " Climate change strike 3 days before UN summit",
                                                                      align='left')
                                                          )),
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
                                                              imageOutput("image13"), br(),br(), br(),br(), br(),br()
                                                              #textOutput("text13") 
                                                            ))),
                                                 tabPanel("Word Frequency",
                                                          fluidPage(
                                                            div(img(src = 'TX_wordfreq.png', align='center', height = '500px', width = '1000px')), 
                                                            br(), br(), br(), br(),
                                                            #"TALK MORE HERE",
                                                            style="text-align: center;"))
                                     )),
                            tabPanel("Dallas",
                                     tabsetPanel(type = "tabs",
                                                 tabPanel("Overview", 
                                                          fluidPage(
                                                            div(img(src = 'Dallas.png', align='center', height = '300px', width = '1500px')), 
                                                            br(), br(), br(), br(),
                                                            "Dallas is liberal leaning with 60.2% of the people voting for the Democrat candiate in 
                                                            the last presidential election and 34.3% voting for the Republican candidate.",
                                                            style="text-align: left;"),
                                                          mainPanel(hr(),
                                                                    p(a(href="https://www.nytimes.com/2019/09/20/climate/global-climate-strike.html", "September 20, 2019:"), " Climate change strike 3 days before UN summit",
                                                                      align='left')
                                                          )),
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
                                                              imageOutput("image14"), br(),br(), br(),br(), br(),br()
                                                              #textOutput("text14") 
                                                            ))),
                                                 tabPanel("Word Frequency",
                                                          fluidPage(
                                                            div(img(src = 'Dallas_wordfreq.png', align='center', height = '500px', width = '1000px')), 
                                                            br(), br(), br(), br(),
                                                            #"TALK MORE HERE",
                                                            style="text-align: center;"))
                                     )),
                            tabPanel("Houston",
                                     tabsetPanel(type = "tabs",
                                                 tabPanel("Overview", 
                                                          fluidPage(
                                                            div(img(src = 'Houston.png', align='center', height = '300px', width = '1500px')), 
                                                            style="text-align: left;"),
                                                            "Unlike Texas, Houston's leanings are more liberal with 54% voting Democrat and 41.6% voting Republican.",
                                                          mainPanel(hr(),
                                                                    p(a(href="https://www.nytimes.com/2019/09/20/climate/global-climate-strike.html", "September 20, 2019:"), " Climate change strike 3 days before UN summit",
                                                                      align='left')
                                                          )),
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
                                                              imageOutput("image15"), br(),br(), br(),br(), br(),br()
                                                              #textOutput("text15") 
                                                            ))),
                                                 tabPanel("Word Frequency",
                                                          fluidPage(
                                                            div(img(src = 'Houston_wordfreq.png', align='center', height = '500px', width = '1000px')), 
                                                            br(), br(), br(), br(),
                                                            #"TALK MORE HERE",
                                                            style="text-align: center;"))
                                     )),
                            tabPanel("San Antonio",
                                     tabsetPanel(type = "tabs",
                                                 tabPanel("Overview", 
                                                          fluidPage(
                                                            div(img(src = 'San_Antonio.png', align='center', height = '300px', width = '1500px')), 
                                                            br(), br(), br(), br(),
                                                            "There are gaps in the weather data in the beginning, due to maintenance being done on the weather station.",
                                                            br(), br(),
                                                            "Unlike Texas, San Antonio voted 53.7% Democrat and 40.4% voted Republican in the last presidential election.",
                                                            style="text-align: left;"),
                                                          mainPanel(hr(),
                                                                    p(a(href="https://www.nytimes.com/2019/09/20/climate/global-climate-strike.html", "September 20, 2019:"), " Climate change strike 3 days before UN summit",
                                                                      align='left')
                                                          )),
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
                                                              imageOutput("image16"), br(),br(), br(),br(), br(),br()
                                                              #textOutput("text16") 
                                                            ))),
                                                 tabPanel("Word Frequency",
                                                          fluidPage(
                                                            div(img(src = 'San_Antonio_wordfreq.png', align='center', height = '500px', width = '1000px')), 
                                                            br(), br(), br(), br(),
                                                            #"TALK MORE HERE",
                                                            style="text-align: center;"))
                                     ))
                            
                 ),
                 
                tabPanel("Methodology",
                                     h1("Working with Twitter Data", align = "center"), br(),
                                     h3("Parsing Data"),
                                     p("An issue that arose when working with Twitter data was managing format type. I was unable to load the files a JSONs;
                                       instead, they were loaded as a single long string, or set of charactors. Therefore, I spent nearly one week parsing the 
                                       two years worth (2017-2019) of Twitter data into CSV files. The intial data set included many parameters, such as the number of retweets
                                       and shares, but the only variables I parsed included date of origin, city, and state. Every single day and every single hour were parsed.
                                       However, some files ended up getting corrupted, which required normalizing some of the values that will be later discussed.") ,
                                     h3("Identifying Key Words"),
                                     p("After transforming the data into an interpreatble format, the goal was to narrow it down to a set
                                       of tweets that had chnages related to climate change. After looking up popular climate change related tweets
                                       and hashtags,
                                       I was able to come up with a list of key words, which included: climate change, global warming, warming,
                                       climate, carbon dioxide, co2, pollution, air quality, climate crisis, #climatedenial, #climateemergency,
                                       climate denial, #climateaction, climate science, drought, and water level. I wanted to stay away from words, such as hot or cold, 
                                       which I thought were too general and could increase the estimation, optimization, and generalization error. 
                                       Any tweets containing these words were included"),
                                       p("I am unsure of how much overlap occurred as a result of word choices. For instance, in the case of the
                                      the key words 'warming' and 'global warming', I am not confident that tweets were not double counted. I struggled with making
                                      the words generalizable, but also wanted to capture words that were highly specific to climate change. 
                                      Including the gernealizable words possibly resulted in a higher error"),
                                     h3("Normalizing Value"),
                                     p("Though all twitter data was parsed, some time periods became corrupted. I am unsure why this occurred, 
                                     but I had to develop a way to account for this when interpreting the data. For example, if only 4 hours were 
                                     accounted for, it would not be fair to compare it to a day when all 24 hours were used. To account for this,
                                     I normalized tweets by total tweets and by hour. Tweets that were 'normalized by total count' were all climate change
                                     related tweets divided by total tweets, and this was calculated for every day. Similarly, 'normalized by hour' tweets
                                     were calculated by dividing all climate change related tweets by the number of hours observed. Even though 'normalized by hour'
                                     is a better metric than a simple count of tweets, it is still somewhat flawed. We can make an assumption that people
                                     tweet more duing waking hours. Considering 'normalized by hour' does not take into consideration which hours data was collected,
                                     we can assume there is some generalization error in this value."), 
                                     p("For all of the graphs, normalized tweet count per hour was used. For instance, a normalized tweet 
                                       count per hour of .4 in California indicates that, on average, .4 tweets about climate change were generated
                                       per hour in California. I did not use 'normalized by total count', because they results were harder to interpret. 
                                       There are hundreds of thousands of tweets on any given day, with climate change related tweets being a small minority.
                                       Therefore, nearly all 'normalized by total count' tweets had values close to zero."),
                                     h1("Working with Weather Data", align = "center"), 
                                     p(a(href="https://www.ncei.noaa.gov/metadata/geoportal/rest/metadata/item/gov.noaa.ncdc:C00861/html", "Weather data"),
                                       "came from the National Oceanic and Atmospheric Administration (NOAA) and included temperature minimums 
                                       and maximums for all state stations everyday in the last 2 years. To determine an area's weather, I chose the 
                                       closest weather station. I am unsure how close the weather station is to the location itself. For instance, if the station 
                                       was in Boston, I do not know if it was in the cenetr of Boston, or closer to the city's edge."),
                                     p("Incorporating precipitation data could have been potentially interesting. The media covers incidences where people cite 
                                       snow as proof that climate change is not real. Therefore, it could have been interesting to see if that trend plays out
                                       in social media as well. The reason that I did not pursue this is firstly because NOAA's weather data is somewhat limited
                                       in terms of precipitation
                                       and secondly it would be difficult to faciliate comparisons between states, considering not all states have snow. "),
                         h1("Political Preference Data", align='center'),
                         p("Data regarding the",a(href="https://www.kaggle.com/benhamner/2016-us-election", "2016 Presidential Election"), "was used to gauage 
                           each state's political leanings. This dataset covers the proportion of votes for each of the 5 major political party candidates in each
                           coutnty in each state. To generate state proportion, I simply averaged every county within a state. Furthermore, the strength of
                           political leaning was also calculated using z scores."),
                         br(), br(), br(), br(), br()
                                     ))