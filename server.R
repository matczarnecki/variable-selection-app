library(data.table)
library(randomForest)

shinyServer(function(input, output, session) {
  output$text_out <- renderText({
    paste(input$text_in)
  })
})
