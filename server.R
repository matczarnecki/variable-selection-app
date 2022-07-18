library(data.table)
library(randomForest)

data_table_options <- list(
  pageLength = 10,
  scrollX = TRUE
)

shinyServer(function(input, output, session) {

  data_frame <- reactive({
    input_file <- input$csv_file
    if (is.null(input_file)) {
      return(NULL)
    }
    read.csv(input_file$datapath, header = input$header)
  })

  output$contents <- renderDataTable({
    data_frame()
  },
    options <- data_table_options
  )

  output$contents_selection <- renderDataTable({
    data_frame()
  },
    options <- data_table_options
  )
})
