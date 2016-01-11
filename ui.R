
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Conditional Control Example"),

  # Sidebar with a numeric input
  sidebarLayout(
    sidebarPanel(
      #numericInput('num', label = h3('Numeric input'), value = 1),
      #
      selectInput(
        inputId = "Id_val", 
        label = "What is the ID", 
        choices = list("0" = 0, "1" = 1, "2" = 2),
        selected = 1),
      conditionalPanel(
        condition="output.idresp_1 > 0",
        h4('Download Button Visible if Input >0'),
        downloadButton('downloadData','Download')
      )
    ),

    # Show a plot of some data
    mainPanel(
      #dataTableOutput('table1'),
      verbatimTextOutput('idresp_1')#,
#       conditionalPanel(
#         condition="output.id > 0",
#         h4('Visible'),
#         downloadButton('downloadData','Download')
#       )
    )
  )
))
