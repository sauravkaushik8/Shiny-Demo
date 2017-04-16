#SERVER.R
library(shiny)

#writing Server function
shinyServer(function(input, output) {

  output$distPlot <- renderPlot({
    if(input$s=='a1') { i<-1 }
    if(input$s=='b1') { i<-2 }
    if(input$s=='c1') { i<-3 }
    if(input$s=='d1') { i<-4 }
    if(input$s=='e1') { i<-5 }
    if(input$s=='f1') { i<-6 }
    if(input$s=='g1') { i<-7 }
    if(input$s=='h1') { i<-8 }
    if(input$s=='i1') { i<-9 }
    if(input$s=='j1') { i<-10 }
    if(input$s=='k1') { i<-11 }
    if(input$s=='l1') { i<-12 }
    if(input$s=='m1') { i<-13 }
    if(input$k=='a2') { j<-1 }
    if(input$k=='b2') { j<-2 }
    if(input$k=='c2') { j<-3 }
    if(input$k=='d2') { j<-4 }
    if(input$k=='e2') { j<-5 }
    if(input$k=='f2') { j<-6 }
    if(input$k=='g2') { j<-7 }
    if(input$k=='h2') { j<-8 }
    if(input$k=='i2') { j<-9 }
    if(input$k=='j2') { j<-10 }
    if(input$k=='k2') { j<-11 }
    if(input$k=='l2') { j<-12 }
    if(input$k=='m2') { j<-13 }
    
    #read data
    train<-read.csv("train_u6lujuX_CVtuZ9i.csv")
    X    <- train[, i]
    Y    <- train[, j]
    plot(X,Y)
  })
})