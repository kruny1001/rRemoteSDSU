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

t <- runSrc(text = "age <- c(1,3,5,2,11,9,3,9,12,3)\nmean(age)")
t
age <- c(1,3,5,2,11,9,3,9,12,3) 
mean(age)
sd(age)
