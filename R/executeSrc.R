runSrc <- function(text){
  writeLines(text, con="input.R")
  chart = source('input.R', local = TRUE)
  return(chart)
}