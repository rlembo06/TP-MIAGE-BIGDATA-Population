library(shiny)
library(shinydashboard)
source("./ui/index.R")
source("./server.R")

shinyApp(ui, server)