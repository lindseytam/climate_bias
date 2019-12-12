library(shiny)

server <- function(input, output) {
  
  output$image1 <- renderImage({
    filename <- normalizePath(file.path('./www',
                                        paste('AK_', input$AKSeason,'_', input$AKdataset,'.png', sep='')))
    list(src = filename, align='center', height = '500px', width = '800px')
  }, deleteFile = FALSE)
  
  output$text1 <- renderText({ 
    if (paste(input$AKSeason) == "Spring"){paste("Spring analysis")}
    else if (paste(input$AKSeason) == "Summer"){paste("Summer analysis")}
    else if (input$AKSeason == "Fall"){paste("Fall analysis")}
    else if (input$AKSeason == "Overall"){paste("Overall analysis")}
    else if (input$AKSeason == "Winter"){paste("winter analysis")}
    
  })
  
  output$image2 <- renderImage({
    filename <- normalizePath(file.path('./www',
                                        paste('Boston_', input$BO_Season,'_', input$BOdataset,'.png', sep='')))
    list(src = filename, align='center', height = '500px', width = '800px')
  }, deleteFile = FALSE)
  
  output$text2 <- renderText({ 
    if (paste(input$BO_Season) == "Spring"){paste("Spring analysis")}
    else if (paste(input$BO_Season) == "Summer"){paste("Summer analysis")}
    else if (input$BO_Season == "Fall"){paste("Fall analysis")}
    else if (input$BO_Season == "Overall"){paste("Overall analysis")}
    else if (input$BO_Season == "Winter"){paste("winter analysis")}
  })
  
  output$image3 <- renderImage({
    filename <- normalizePath(file.path('./www',
                                        paste('Brockton_', input$BR_Season,'_', input$BRdataset,'.png', sep='')))
    list(src = filename, align='center', height = '500px', width = '800px')
  }, deleteFile = FALSE)
  
  output$text3 <- renderText({ 
    if (paste(input$BR_Season) == "Spring"){paste("Spring analysis")}
    else if (paste(input$BR_Season) == "Summer"){paste("Summer analysis")}
    else if (input$BR_Season == "Fall"){paste("Fall analysis")}
    else if (input$BR_Season == "Overall"){paste("Overall analysis")}
    else if (input$BR_Season == "Winter"){paste("winter analysis")}
  })
  
  output$image4 <- renderImage({
    filename <- normalizePath(file.path('./www',
                                        paste('Worcester_', input$WO_Season,'_', input$WOdataset,'.png', sep='')))
    list(src = filename, align='center', height = '500px', width = '800px')
  }, deleteFile = FALSE)
  
  output$text4 <- renderText({ 
    if (paste(input$WO_Season) == "Spring"){paste("Spring analysis")}
    else if (paste(input$WO_Season) == "Summer"){paste("Summer analysis")}
    else if (input$WO_Season == "Fall"){paste("Fall analysis")}
    else if (input$WO_Season == "Overall"){paste("Overall analysis")}
    else if (input$WO_Season == "Winter"){paste("winter analysis")}
  })
  
  output$image5 <- renderImage({
    filename <- normalizePath(file.path('./www',
                                        paste('MA_', input$MASeason,'_', input$MAdataset,'.png', sep='')))
    list(src = filename, align='center', height = '500px', width = '800px')
  }, deleteFile = FALSE)
  
  output$text5 <- renderText({ 
    if (paste(input$MASeason) == "Spring"){paste("Spring analysis")}
    else if (paste(input$MASeason) == "Summer"){paste("Summer analysis")}
    else if (input$MASeason == "Fall"){paste("Fall analysis")}
    else if (input$MASeason == "Overall"){paste("Overall analysis")}
    else if (input$MASeason == "Winter"){paste("winter analysis")}
  })
  
  output$image6 <- renderImage({
    filename <- normalizePath(file.path('./www',
                                        paste('Juneau_', input$JUSeason,'_', input$JUdataset,'.png', sep='')))
    list(src = filename, align='center', height = '500px', width = '800px')
  }, deleteFile = FALSE)
  
  output$text6 <- renderText({ 
    if (paste(input$JUSeason) == "Spring"){paste("Spring analysis")}
    else if (paste(input$JUSeason) == "Summer"){paste("Summer analysis")}
    else if (input$JUSeason == "Fall"){paste("Fall analysis")}
    else if (input$JUSeason == "Overall"){paste("Overall analysis")}
    else if (input$JUSeason == "Winter"){paste("winter analysis")}
  })
  
  output$image7 <- renderImage({
    filename <- normalizePath(file.path('./www',
                                        paste('Fairbanks_', input$FASeason,'_', input$FAdataset,'.png', sep='')))
    list(src = filename, align='center', height = '500px', width = '800px')
  }, deleteFile = FALSE)
  
  output$text7 <- renderText({ 
    if (paste(input$FASeason) == "Spring"){paste("Spring analysis")}
    else if (paste(input$FASeason) == "Summer"){paste("Summer analysis")}
    else if (input$FASeason == "Fall"){paste("Fall analysis")}
    else if (input$FASeason == "Overall"){paste("Overall analysis")}
    else if (input$FASeason == "Winter"){paste("winter analysis")}
  })
  
  output$image8 <- renderImage({
    filename <- normalizePath(file.path('./www',
                                        paste('Kodiak_', input$KOSeason,'_',input$KOdataset,'.png', sep='')))
    list(src = filename, align='center', height = '500px', width = '800px')
  }, deleteFile = FALSE)
  
  output$text8 <- renderText({ 
    if (paste(input$KOSeason) == "Spring"){paste("Spring analysis")}
    else if (paste(input$KOSeason) == "Summer"){paste("Summer analysis")}
    else if (input$KOSeason == "Fall"){paste("Fall analysis")}
    else if (input$KOSeason == "Overall"){paste("Overall analysis")}
    else if (input$KOSeason == "Winter"){paste("winter analysis")}
  })
  
  output$image9 <- renderImage({
    filename <- normalizePath(file.path('./www',
                                        paste('CA_', input$CASeason,'_',input$CAdataset,'.png', sep='')))
    list(src = filename, align='center', height = '500px', width = '800px')
  }, deleteFile = FALSE)
  
  output$text9 <- renderText({ 
    if (paste(input$CASeason) == "Spring"){paste("Spring analysis")}
    else if (paste(input$CASeason) == "Summer"){paste("Summer analysis")}
    else if (input$CASeason == "Fall"){paste("Fall analysis")}
    else if (input$CASeason == "Overall"){paste("Overall analysis")}
    else if (input$CASeason == "Winter"){paste("winter analysis")}
  })
  
  output$image10 <- renderImage({
    filename <- normalizePath(file.path('./www',
                                        paste('Los_Angeles_', input$LASeason,'_',input$LAdataset,'.png', sep='')))
    list(src = filename, align='center', height = '500px', width = '800px')
  }, deleteFile = FALSE)
  
  output$text10 <- renderText({ 
    if (paste(input$LASeason) == "Spring"){paste("Spring analysis")}
    else if (paste(input$LASeason) == "Summer"){paste("Summer analysis")}
    else if (input$LASeason == "Fall"){paste("Fall analysis")}
    else if (input$LASeason == "Overall"){paste("Overall analysis")}
    else if (input$LASeason == "Winter"){paste("winter analysis")}
  })
  
  output$image11 <- renderImage({
    filename <- normalizePath(file.path('./www',
                                        paste('Sacramento_', input$SASeason,'_',input$SAdataset,'.png', sep='')))
    list(src = filename, align='center', height = '500px', width = '800px')
  }, deleteFile = FALSE)
  
  output$text11 <- renderText({ 
    if (paste(input$SASeason) == "Spring"){paste("Spring analysis")}
    else if (paste(input$SASeason) == "Summer"){paste("Summer analysis")}
    else if (input$SASeason == "Fall"){paste("Fall analysis")}
    else if (input$SASeason == "Overall"){paste("Overall analysis")}
    else if (input$SASeason == "Winter"){paste("winter analysis")}
  })
  
  output$image12 <- renderImage({
    filename <- normalizePath(file.path('./www',
                                        paste('Berkeley_', input$BESeason,'_',input$BEdataset,'.png', sep='')))
    list(src = filename, align='center', height = '500px', width = '800px')
  }, deleteFile = FALSE)
  
  output$text12 <- renderText({ 
    if (paste(input$BESeason) == "Spring"){paste("Spring analysis")}
    else if (paste(input$BESeason) == "Summer"){paste("Summer analysis")}
    else if (input$BESeason == "Fall"){paste("Fall analysis")}
    else if (input$BESeason == "Overall"){paste("Overall analysis")}
    else if (input$BESeason == "Winter"){paste("winter analysis")}
  })
  
  output$image13 <- renderImage({
    filename <- normalizePath(file.path('./www',
                                        paste('TX_', input$TXSeason,'_',input$TXdataset,'.png', sep='')))
    list(src = filename, align='center', height = '500px', width = '800px')
  }, deleteFile = FALSE)
  
  output$text13 <- renderText({ 
    if (paste(input$TXSeason) == "Spring"){paste("Spring analysis")}
    else if (paste(input$TXSeason) == "Summer"){paste("Summer analysis")}
    else if (input$TXSeason == "Fall"){paste("Fall analysis")}
    else if (input$TXSeason == "Overall"){paste("Overall analysis")}
    else if (input$TXSeason == "Winter"){paste("winter analysis")}
  })
  
  output$image14 <- renderImage({
    filename <- normalizePath(file.path('./www',
                                        paste('Dallas_', input$DASeason,'_',input$DAdataset,'.png', sep='')))
    list(src = filename, align='center', height = '500px', width = '800px')
  }, deleteFile = FALSE)
  
  output$text14 <- renderText({ 
    if (paste(input$DASeason) == "Spring"){paste("Spring analysis")}
    else if (paste(input$DASeason) == "Summer"){paste("Summer analysis")}
    else if (input$DASeason == "Fall"){paste("Fall analysis")}
    else if (input$DASeason == "Overall"){paste("Overall analysis")}
    else if (input$DASeason == "Winter"){paste("winter analysis")}
  })
  
  output$image15 <- renderImage({
    filename <- normalizePath(file.path('./www',
                                        paste('Houston_', input$HOSeason,'_',input$HOdataset,'.png', sep='')))
    list(src = filename, align='center', height = '500px', width = '800px')
  }, deleteFile = FALSE)
  
  output$text15 <- renderText({ 
    if (paste(input$HOSeason) == "Spring"){paste("Spring analysis")}
    else if (paste(input$HOSeason) == "Summer"){paste("Summer analysis")}
    else if (input$HOSeason == "Fall"){paste("Fall analysis")}
    else if (input$HOSeason == "Overall"){paste("Overall analysis")}
    else if (input$HOSeason == "Winter"){paste("winter analysis")}
  })
  
  output$image16 <- renderImage({
    filename <- normalizePath(file.path('./www',
                                        paste('San_Antonio_', input$SOSeason,'_',input$SOdataset,'.png', sep='')))
    list(src = filename, align='center', height = '500px', width = '800px')
  }, deleteFile = FALSE)
  
  output$text16 <- renderText({ 
    if (paste(input$SOSeason) == "Spring"){paste("Spring analysis")}
    else if (paste(input$SOSeason) == "Summer"){paste("Summer analysis")}
    else if (input$SOSeason == "Fall"){paste("Fall analysis")}
    else if (input$SOSeason == "Overall"){paste("Overall analysis")}
    else if (input$SOSeason == "Winter"){paste("winter analysis")}
  })
  
  
} 