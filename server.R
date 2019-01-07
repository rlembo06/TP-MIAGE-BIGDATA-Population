library(shiny)
library(ggplot2)

source("./scripts/index.R")

function(input, output) {
  output$plotPercent65Up60_10<- renderPlot({
    data <- DFpercentage65UpByYears
    type <- geom_line(size=2)
    args <- aes(
      x = Years, 
      y = percentage65Up, 
      group = region, 
      color = region
    )
    legend_title <- theme(
      legend.position = "top",
      legend.text = element_text(size = 17)
    )
    
    ggplot(data, args) + type + legend_title + xlab("Années") + ylab("Pourcentage + 65 ans")
  })
  
  output$plotPercent65Up11_17<- renderPlot({
    data <- DFpercentage65UpByYears11_17
    type <- geom_line(size=2)
    args <- aes(
      x = Years, 
      y = percentage65Up, 
      group = region, 
      color = region
    )
    graphParams <- theme(
      legend.position = "top",
      legend.text = element_text(size = 17)
    )
    
    ggplot(data, args) + type + graphParams + xlab("Années") + ylab("Pourcentage + 65 ans")
  })
  
  output$plotAveragePopEurope<- renderPlot({
    data <- DFaveragePopEurope
    type <- geom_bar(stat="identity", fill="steelblue")
    args <- aes(
      x = Years,
      y = Population
    )
    graphParams <- theme(
      legend.position = "top",
      legend.text = element_text(size = 17)
    )
    
    ggplot(data, args) + type + graphParams + xlab("Années") + ylab("Population")
  })
  
  output$plotAveragePopWorld<- renderPlot({
    data <- DFaveragePopWorld
    type <- geom_bar(stat="identity", fill="steelblue")
    args <- aes(
      x = Years,
      y = Population
    )
    graphParams <- theme(
      legend.position = "top",
      legend.text = element_text(size = 17)
    )
    
    ggplot(data, args) + type + graphParams + xlab("Années") + ylab("Population")
  })
  
  output$plotGrowth60_10<- renderPlot({
    data <- DFGrowth60_10
    type <- geom_line(size=2)
    args <- aes(
      x = Years, 
      y = Growth, 
      group = Region, 
      color = Region
    )
    legend_title <- theme(
      legend.position = "top",
      legend.text = element_text(size = 17)
    )
    
    ggplot(data, args) + type + legend_title + xlab("Années") + ylab("Taux de croissance")
  })
  
  output$plotGrowth11_17<- renderPlot({
    data <- DFGrowth11_17
    type <- geom_line(size=2)
    args <- aes(
      x = Years, 
      y = Growth, 
      group = Region, 
      color = Region
    )
    legend_title <- theme(
      legend.position = "top",
      legend.text = element_text(size = 17)
    )
    
    ggplot(data, args) + type + legend_title + xlab("Années") + ylab("Taux de croissance")
  })
  
  output$plot65Rapport<- renderPlot({
    source("./scripts/plot65Rapport.R")
  })
  
  output$plotGrowthRapport<- renderPlot({
    source("./scripts/plotGrowthRapport.R")
  })
}
