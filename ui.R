library(shiny)
library(shinythemes)
library(markdown)

fluidPage(theme = shinytheme("united"),
  navbarPage(
    "Variable Selection Application:",
    tabPanel("Select file",
      sidebarPanel(
        fileInput("csv_file", "Choose CSV File",
          accept = c(
            "text/csv",
            "text/comma-separated-values,text/plain",
            ".csv")
          ),
        tags$hr(),
        checkboxInput("header", "Header", TRUE)
      ),
      mainPanel(
        dataTableOutput("contents")
      )
    ),
    tabPanel("Variable selection method",
    "This panel is intentionally left blank"),
    tabPanel("Classification method",
    "This panel is intentionally left blank"),
    tabPanel("Perform and see results",
    "This panel is intentionally left blank"),
    tabPanel("About",
    div(includeMarkdown("about.md"),
    align = "justify")),
  ),
)
