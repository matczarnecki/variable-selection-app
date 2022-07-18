library(shiny)
library(shinythemes)
library(markdown)

source("ui/fileSelectionTabPanel.R")
source("ui/methodSelectionTabPanel.R")

app_title <- "Variable Selection Application:"

fluidPage(
  theme = shinytheme("united"),
  navbarPage(
    app_title,
    file_selection_tab_panel,
    method_selection_tab_panel,
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
