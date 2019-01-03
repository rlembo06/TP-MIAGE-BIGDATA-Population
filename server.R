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
      axis.title = element_text(size = 17),
      legend.position = "top",
      legend.text = element_text(size = 17),
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
    graphParams <- theme(
      axis.title = element_text(size = 17),
      legend.position = "top",
      legend.text = element_text(size = 17),
      plot.title = element_text(size = 20, face = "bold")
    )
    
    ggplot(data, args) + type + title + graphParams + xlab("Années") + ylab("Pourcentage + 65 ans")
  })
  
  output$plotAveragePopEurope<- renderPlot({
    data <- DFaveragePopEurope
    title <- ggtitle("Moyenne population Europe")
    type <- geom_bar(stat="identity", fill="steelblue")
    args <- aes(
      x = Years,
      y = Population
    )
    graphParams <- theme(
      axis.title = element_text(size = 17),
      legend.position = "top",
      legend.text = element_text(size = 17),
      plot.title = element_text(size = 20, face = "bold")
    )
    
    ggplot(data, args) + type + title + graphParams + xlab("Années") + ylab("Population")
  })
  
  output$plotAveragePopWorld<- renderPlot({
    data <- DFaveragePopWorld
    title <- ggtitle("Moyenne population Monde")
    type <- geom_bar(stat="identity", fill="steelblue")
    args <- aes(
      x = Years,
      y = Population
    )
    graphParams <- theme(
      axis.title = element_text(size = 17),
      legend.position = "top",
      legend.text = element_text(size = 17),
      plot.title = element_text(size = 20, face = "bold")
    )
    
    ggplot(data, args) + type + title + graphParams + xlab("Années") + ylab("Population")
  })
  
  output$europePop1960 <- renderText({europePop1960})
  output$europePop2017 <- renderText({europePop2017})
  output$worldPop1960 <- renderText({worldPop1960})
  output$worldPop2017 <- renderText({worldPop2017})
  
}