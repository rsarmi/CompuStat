
library(shiny)
library(ggplot2)

shinyServer(function(input, output) {
  
  
  
  
  #Hacer la grafica de 2 distribuciones
  output$view <- renderTable({
    u<-runif(input$numSim)
    x<- (1/input$lambda) * log(1/(1-u))
    x<-as.data.frame(x)
    x$Rexp<- rexp(input$numSim,input$lambda)
    head(x, n = input$obs)
  })  
  output$distPlot <- renderPlot({
    u<-runif(input$numSim)
    x<- (1/input$lambda) * log(1/(1-u))
    x<-as.data.frame(x)
    x$Rexp<- rexp(input$numSim,input$lambda)
    ggplot(x) + geom_density(aes(x=x), colour="red", fill="white") + geom_density(aes(x=Rexp), alpha=.15, fill="blue")
    
    
    
  })
  
})
