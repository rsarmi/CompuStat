
library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Tarea 1"),
  
  sidebarLayout(
    sidebarPanel(
      
      sliderInput("numSim",
                  "Nmero de simulaciones:",
                  min = 1,
                  max = 100000,
                  value = 100),
      
      sliderInput("lambda",
                  "Lambda:",
                  min = 1,
                  max = 100,
                  value = 5),
      numericInput("obs", "Observaciones a visualizar en la tabla:", 10)
      
    ),
    
    mainPanel(
      tabsetPanel(
        tabPanel("Distribuciones", plotOutput("distPlot")), 
        tabPanel("Tabla", tableOutput("view"))
      )
    )
  )
))
