library(shiny)
library(shinythemes)
library(markdown)

app_title <- "Variable Selection Application:"

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

selection_method_tab_panel <- tabPanel(
  "Variable selection method",
  sidebarPanel(
    radioButtons(
      "dist", "Choose selection method:",
      c(
        "No variable selection" = "no_selection",
        "PCA" = "pca",
        "BMA" = "bma"
      )
    ),
    actionButton("selection_button", "Perform selection")
  ),
  mainPanel(
    dataTableOutput("contents_selection")
  )
)

fluidPage(
  theme = shinytheme("united"),
  navbarPage(
    app_title,
    file_selection_tab_panel,
    selection_method_tab_panel,
    tabPanel(
      "Classification method",
      "This panel is intentionally left blank"
    ),
    tabPanel(
      "Perform and see results",
      "This panel is intentionally left blank"
    ),
    tabPanel(
      "About",
      div(includeMarkdown("about.md"),
        align = "justify"
      )
    ),
  ),
)
