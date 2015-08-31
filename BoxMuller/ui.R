library(shiny)

shinyUI(fluidPage(

  titlePanel("Simulacion Box-Muller"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Numero de observaciones (por variable):",
                  min = 1,
                  max = 50000,
                  value = 100)
    ),

    mainPanel(
      plotOutput("distPlot")
    )
  )
))
