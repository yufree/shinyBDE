
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

# input 209 BDE's molecular descriptors, scale and remove the variance-zero variables. 
# the db5ms retention time data comes from Wei's paper.

database <- read.table('PBDEpre')
datapre <- apply(database,1,mean)

shinyServer(function(input, output) {
  
  output$text <- renderText({ 
    paste("The BDE-",input$index," RRT is ",datapre[input$index])
  })
})
