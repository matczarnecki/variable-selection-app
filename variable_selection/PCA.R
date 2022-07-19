library(caret)
library(deepboost)

perform_variable_selection_pca <- function(data) {
  data_no_caravan <- data[-86]
  pca <- prcomp(data_no_caravan, scale = TRUE)
  print(summary(pca))
  pca$rotation[, 1]
  proj <- as.data.frame(pca$x)

  # proj_reduced <- proj # 100%
  # proj_reduced <- proj[,0:62] # 99%
  # proj_reduced <- proj[,0:46] # 95%
  # proj_reduced <- proj[,0:39] # 90%
  proj_reduced <- proj[, 0:34] # 85%
  # proj_reduced <- proj[,0:30] # 80%
  # proj_reduced <- proj[,0:14] # 50%
  # proj_reduced <- proj[, 0:2] # 16% najwieksza mozliwa redukcja

  #   plot(proj_reduced[1:10, 1:3])

  proj_reduced["CARAVAN"] <- as.factor(data[, "CARAVAN"])
  print(sum(is.na(proj_reduced)))
  return(proj_reduced)
}
