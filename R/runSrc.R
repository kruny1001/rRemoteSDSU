#' 1.1 List 
#' 
#' Returns a row with the latest price for a given stock.
#' 
#' @param text source code of R. Required.
#' @return ggplot object.
#' @export
#' 

runSrc <- function(text= "a <- 1+1", keep.source = TRUE){
  library(ggplot2)
  library(jsonlite)
  
  writeLines(text, con="input.R")
  result <- source('input.R', local = TRUE)
  print(result)
  if(result$visible == TRUE)
    print("visible")
  jsonoutput <- toJSON(result)
}
