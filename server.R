library(data.table)
library(randomForest)

data_table_options <- list(
  pageLength = 10,
  scrollX = TRUE
)

shinyServer(function(input, output, session) {
  output$contents <- renderDataTable(
    {
      input_file <- input$csv_file
      if (is.null(input_file)) {
        return(NULL)
      }
      data <- read.csv(input_file$datapath, header = input$header)
      print(data)
    },
    options <- data_table_options
  )

  output$contents_selection <- renderDataTable(
    {
      input_file <- input$csv_file
      if (is.null(input_file)) {
        return(NULL)
      }
      data <- read.csv(input_file$datapath, header = input$header)
      print(data)
    },
    options <- data_table_options
  )
})
