library(ggplot2)

source("./data.R")

# Define server logic required to draw a histogram
function(input, output) {
  
  output$plotPercent65Up60_10<- renderPlot({
    ggplot(DFpercentage65UpByYears_2[DFpercentage65UpByYears_2$region == 'World',]) + geom_line(aes(x=Years,y=percentage65Up)) + ggtitle("Evolution of proportion > 65 years old")
    
  })
  
}