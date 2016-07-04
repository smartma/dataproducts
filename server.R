# Mike Smart - July 2016 - Data Products Course Project
# server.R

library(shiny)

pyth <- function(a, b){
  sqrt(a^2+b^2)
}

areaT <- function(a, b){
  (a*b)/2
}

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$onumA <- renderPrint({input$numA})
  output$onumB <- renderPrint({input$numB})
  output$onumC <- renderPrint(pyth(input$numA,input$numB))
  output$onumX <- renderPrint(areaT(input$numA,input$numB))
  
})
