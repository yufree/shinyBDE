
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Database of PBDEs' RRTs"),
  
  # Sidebar with a slider input for number of PBDEs
  sidebarPanel(
    sliderInput("index", 
                "Index of PBDEs:", 
                min = 1, 
                max = 209, 
                value = 47)
  ),
  
  mainPanel(
    textOutput("text")
  )
))
