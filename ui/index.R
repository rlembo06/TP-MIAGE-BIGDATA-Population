library(shiny)
library(shinydashboard)

ui <- shinyUI({
  
  dashboardPage(
    dashboardHeader(title = "Population"),
    
    dashboardSidebar(
      sidebarMenu(
        menuItem("Mondiale/Europe", tabName = "popEU_W", icon = icon("globe")),
        menuItem("Française", tabName = "popFR", icon = icon("flag")),
        menuItem("Rapport", tabName = "rapport", icon = icon("book"))
      )
    ),
    
    dashboardBody(
      tabItems(
        
        tabItem(tabName = "popEU_W",
                source("./ui/popEU_W.R")
        ),
        
        tabItem(tabName = "popFR",
                source("./ui/popFR.R")
        ),
        
        tabItem(tabName = "rapport",
                source("./ui/rapport.R")
        )
        
      )
    )
  )
  
})