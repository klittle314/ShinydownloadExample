
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {
  df1 <- head(trees)
  output$table1 <- renderDataTable({
      df1
  })
  
  output$idresp_1 <- reactive({
    num_check <- input$Id_val
  })
  
   
  
  output$downloadData <- downloadHandler(
    filename = function() { "test.csv" },
    content = function(file) {
      write.csv(df1, file)
      
    }
  )
  

})
