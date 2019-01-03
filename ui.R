library(shiny)
library(shinydashboard)

dashboardPage(
  dashboardHeader(title = "Population"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Mondiale/Europe", tabName = "popEU_W", icon = icon("dashboard")),
      menuItem("Française", tabName = "popFR", icon = icon("th"))
    )
  ),
  dashboardBody(
    tabItems(
      
      tabItem(tabName = "popEU_W",
        source("./ui/popEU_W.R")
      ),
      
      tabItem(tabName = "popFR",
        source("./ui/popFR.R")
      )
      
    )
  )
)