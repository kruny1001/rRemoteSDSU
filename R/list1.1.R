#' 1.1 List 
#' 
#' Returns a row with the latest price for a given stock.
#' 
#' @param source code of R
#' @export
#' 

runSrc <- function(text){
  writeLines(text, con="input.R")
  result = source('input.R', local = TRUE)
  return(result)
}