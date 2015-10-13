library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Scatterplots for various values of r."),
  
  # Sidebar with a slider input for the number of means
  sidebarLayout(
    sidebarPanel(
      sliderInput("decimal", 
      				"Decimal:", 
                  	min = -1, 	
                  	max = 1, 
                  	value = 0.5, 
                  	step = 0.01)            
                    
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
   )
 ))
