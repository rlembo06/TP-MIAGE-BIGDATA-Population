library(ggplot2)

source("./data.R")

# Define server logic required to draw a histogram
function(input, output) {
  
  output$plotPercent65Up60_10<- renderPlot({
    data <- DFpercentage65UpByYears
    title <- ggtitle("Evolution de la proportion des +65 ans (1960 - 2010)")
    type <- geom_line(size=2)
    args <- aes(
      x = Years, 
      y = percentage65Up, 
      group = region, 
      color = region
    )
    legend_title <- theme(
      legend.position="top",
      plot.title = element_text(size = 20, face = "bold")
    )
    
    ggplot(data, args) + type + title + legend_title + xlab("Années") + ylab("Pourcentage + 65 ans")
  })
  
  output$plotPercent65Up11_17<- renderPlot({
    data <- DFpercentage65UpByYears11_17
    title <- ggtitle("Evolution de la proportion des +65 ans (2011 - 2017)")
    type <- geom_line(size=2)
    args <- aes(
      x = Years, 
      y = percentage65Up, 
      group = region, 
      color = region
    )
    legend_title <- theme(
      legend.position="top",
      plot.title = element_text(size = 20, face = "bold")
    )
    
    ggplot(data, args) + type + title + legend_title + xlab("Années") + ylab("Pourcentage + 65 ans")
  })
  
}