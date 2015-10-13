library(shiny)

shinyServer(
function(input, output) {
  
output$distPlot <- renderPlot({
 scatter <- function(r, N){x = rnorm(N); y = r*x + rnorm(N ,0, sqrt(1 - r^2)); 
plot(x, y, xlim = c(-4, 4), ylim = c(-4, 4), pch = 19, col = "blue")}

r <- input$decimal
scatter(r, 200)
text(0, 3, paste("r =   ", as.character(round(r, 2))), cex = 3)  
})

})

