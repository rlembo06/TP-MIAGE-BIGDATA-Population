library(ggplot2)

source("./data.R")

# Define server logic required to draw a histogram
function(input, output) {
  
  output$plotPercent65Up60_10<- renderPlot({
    data <- DFpercentage65UpByYears
    title <- ggtitle("Evolution de la proportion des +65 ans")
    type <- geom_line(size=2)
    args <- aes(
      x = Years, 
      y = percentage65Up, 
      group = region, 
      color = region
    )
    legend <- theme(legend.position="top")
    
    ggplot(data, args) + type + title + legend + xlab("Années") + ylab("Pourcentage + 65 ans")
  })
  
}