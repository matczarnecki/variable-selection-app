file_selection_tab_panel <- tabPanel(
  "Select file",
  sidebarPanel(
    fileInput("csv_file", "Choose CSV File",
      accept = c(
        "text/csv",
        "text/comma-separated-values,text/plain",
        ".csv"
      )
    ),
    checkboxInput("header", "Header", TRUE)
  ),
  mainPanel(
    dataTableOutput("contents")
  )
)
