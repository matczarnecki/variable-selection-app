selection_methods <- c(
  "No variable selection" = "no_selection",
  "PCA" = "pca",
  "BMA" = "bma"
)

method_selection_tab_panel <- tabPanel(
  "Variable selection method",
  sidebarPanel(
    radioButtons(
      "dist", "Choose selection method:",
      selection_methods,
    ),
    actionButton("selection_button", "Perform selection")
  ),
  mainPanel(
    dataTableOutput("contents_selection")
  )
)