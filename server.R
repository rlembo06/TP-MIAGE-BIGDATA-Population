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
  
  output$europePop1960 <- renderText({europePop1960})
  output$europePop2017 <- renderText({europePop2017})
  output$worldPop1960 <- renderText({worldPop1960})
  output$worldPop2017 <- renderText({worldPop2017})
  
  output$plotVariancePop<- renderPlot({
    data <- DFvarPop
    type <- geom_bar(stat="identity", fill="steelblue")
    args <- aes(
      x = Years,
      y = Variance
    )
    graphParams <- theme(
      legend.position = "top",
      legend.text = element_text(size = 17)
    )
    
    ggplot(data, args) + type + graphParams + xlab("Années") + ylab("Variance")
  })
  
  output$plotVariancePop65Up<- renderPlot({
    data <- DFvarPop65Up
    type <- geom_bar(stat="identity", fill="steelblue")
    args <- aes(
      x = Years,
      y = Variance
    )
    graphParams <- theme(
      legend.position = "top",
      legend.text = element_text(size = 17)
    )
    
    ggplot(data, args) + type + graphParams + xlab("Années") + ylab("Variance")
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
  
  output$plotDFtStudentEuropeGrowth<- renderPlot({
    curve(dt(x, tStudentEuropeGrowth11_17$parameter), from = -6, to = 6, col = "blue", 
          xlab = "quantile", ylab = "density", lwd = 2)
    
    curve(dt(x, tStudentEuropeGrowth60_10$parameter), from = -6, to = 6, col = "red", 
          xlab = "quantile", ylab = "density", lwd = 2,  add = TRUE)
    
    
    legend("topleft", 
           legend = paste0(
             c("DF 2011-2017 : ","DF 1960-2010 : "),
             c(tStudentEuropeGrowth11_17$parameter, tStudentEuropeGrowth60_10$parameter)
           ),
           col = c("blue", "red"),
           lty = 1)
  })
  
  output$plotDFtStudentEurope65UpGrowth<- renderPlot({
    curve(dt(x, tStudentEuropeGrowth65Up11_17$parameter), from = -6, to = 6, col = "blue", 
          xlab = "quantile", ylab = "density", lwd = 2)
    
    curve(dt(x, tStudentEuropeGrowth65Up60_10$parameter), from = -6, to = 6, col = "red", 
          xlab = "quantile", ylab = "density", lwd = 2,  add = TRUE)
    
    
    legend("topleft", 
           legend = paste0(
             c("DF 2011-2017 : ","DF 1960-2010 : "),
             c(tStudentEuropeGrowth65Up11_17$parameter, tStudentEuropeGrowth65Up60_10$parameter)
           ),
           col = c("blue", "red"),
           lty = 1)
  })
}
