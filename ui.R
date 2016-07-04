# Mike Smart - July 2016 - Data Products Course Project
# ui.R

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Pythagoras' Theorem - Calculator"),
  h4("Mike Smart - Data Products - Course Project - July 2016"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      h3("User Input"),
      numericInput('numA', 'Length of a', 3, min = 0, step = 1),
      numericInput('numB', 'Length of b', 4, min = 0, step = 1)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       h2("Pythagoras' Theorem"),
       p("Pythagoras' Theorem states that the square of the hypotenuse (the side opposite the right angle) is equal to the sum of the squares of the other two sides."),
       p("The following displays the input variables, these are the lengths for sides a and b. The result is the length of side c."),
       HTML("<table border='0' width='100%'><tr><td width='30%'><img src='https://upload.wikimedia.org/wikipedia/commons/thumb/d/d2/Pythagorean.svg/260px-Pythagorean.svg.png'></td><td width='70%'>"),
       h4("Input Variables (sides a & b)"),
       verbatimTextOutput("onumA"),
       verbatimTextOutput("onumB"),
       h4("Result (side c)"),
       verbatimTextOutput("onumC"), 
       HTML("</td></tr></table>"),
       h4("Bonus: Area of the Triangle"),
       p("The area of a triangle can be calculated by (a*b)/2"),
       verbatimTextOutput("onumX")
    )
  )
))
