library(shiny)
source('./ui/index.R', local = TRUE)
source('./server/popEU_W-plots.R')

shinyApp(
  ui = ui,
  server = server
)