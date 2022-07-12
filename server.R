library(data.table)
library(randomForest)

shinyServer(function(input, output, session) {
  output$contents <- renderDataTable({
    input_file <- input$csv_file
    if (is.null(input_file)) {
      return(NULL)
    }
    read.csv(input_file$datapath, header = input$header)
  },
    options = list(
    pageLength = 10,
    scrollX = TRUE
  ))
})
