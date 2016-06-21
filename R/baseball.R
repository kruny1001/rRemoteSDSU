#' 1.1 List 
#' 
#' Returns a row with the latest price for a given stock.
#' 
#' @param text source code of R. Required.
#' @return ggplot object.
#' @export
#' 

baseball <- function(text= "a <- 1+1", keep.source = TRUE){
  library(ggplot2)
  library(jsonlite)
  library(readr) 
  writeLines(text, con="input.R")
  result <- source('input.R', local = TRUE)
  salary <- read_csv("https://raw.githubusercontent.com/kruny1001/rRemoteSDSU/master/input/salary.csv")
  getwd()
  print(salary)
  jsonoutput <- toJSON(result)
}
