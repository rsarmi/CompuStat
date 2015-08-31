library(shiny)

shinyServer(function(input, output) {

  output$distPlot <- renderPlot({

    bins <- input$bins
    
    size<-bins
    
    u<-runif(size)
    v<-runif(size)
    
    w<-rep(0,size)
    y<-rep(0,size)
    
    for (i in 1:size){
      w[i] = sqrt(-2*log(u[i]))*cos(2*pi*v[i])
      y[i] = sqrt(-2*log(u[i]))*sin(2*pi*v[i])
    }
    
    plot(density(c(w,y)))
    
  })

})
