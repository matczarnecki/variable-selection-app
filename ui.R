library(shiny)

fluidPage(theme = shinytheme("united"),
  navbarPage(
    "Variable Selection Application:",
    tabPanel("Select file",
      sidebarPanel(
        textInput("text_in", "Given text:", "Hello world"),
      ),
      mainPanel(
        tags$label(h3("Output text")),
        verbatimTextOutput("text_out"),
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
