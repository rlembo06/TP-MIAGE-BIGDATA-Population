library(shiny)

fluidPage(
  
  # Application title
  titlePanel("Old Faithful Geyser Data"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 60,
                  value = 50)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("plotPercent65Up60_10")
    )
  )
)