#UI.R
library(shiny)

shinyUI(fluidPage(
  #writing title
  titlePanel("Loan Prediction III"),

  sidebarLayout(
    sidebarPanel(
      #taking inputs using radiobuttons
      radioButtons("s", "Select X-axis:",
                   list("Loan_ID"='a1', "Gender"='b1', "Married"='c1', "Dependents"='d1',"Education"='e1', "Self_Employed"='f1', "ApplicantIncome"='g1', "CoapplicantIncome"='h1', "LoanAmount"='i1', "Loan_Amount_Term"='j1', "Credit_History"='k1', "Property_Area"='l1', "Loan_Status"='m1')),
      #taking input k using radiobuttons
      radioButtons("k", "Select Y-axis:",
                   list("Loan_ID"='a2', "Gender"='b2', "Married"='c2', "Dependents"='d2',"Education"='e2', "Self_Employed"='f2', "ApplicantIncome"='g2', "CoapplicantIncome"='h2', "LoanAmount"='i2', "Loan_Amount_Term"='j2', "Credit_History"='k2', "Property_Area"='l2', "Loan_Status"='m2'))     
    ),

  #displaying the output plot
    mainPanel(
      plotOutput("distPlot")
     )
  )
))