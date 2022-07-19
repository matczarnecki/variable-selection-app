selection_methods <- c(
  "No variable selection" = "no_selection",
  "PCA" = "pca",
  "BMA" = "bma"
)

pca_conditional_panel <- conditionalPanel(condition = "input.dist == 'pca'", {
  actionButton("button_1", "Method: PCA Temporary button")
})

bma_conditional_panel <- conditionalPanel(condition = "input.dist == 'bma'", {
  actionButton("button_2", "Method BMA Temporary button")
})

method_selection_tab_panel <- tabPanel(
  "Variable selection method",
  sidebarPanel(
    radioButtons(
      "dist", "Choose selection method:",
      selection_methods,
    ),
    pca_conditional_panel,
    bma_conditional_panel,
    actionButton("apply_selection_button", "Apply selection method")
  ),
  mainPanel(
    dataTableOutput("contents_selection")
  )
)