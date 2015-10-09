#' scan 
#' 
#' This is a wrapper for the OpenCPU application. It is a single function that calls out to various plot types.
#' The function prints a plot to the graphics device and returns nothing.
#' 
#' @export
#' @import rjson
#' 
#' 
#' 
#' 
scanR <- function(){
  json_file <- "https://statsdsu.firebaseio.com/data1.json"
  json_data <- fromJSON(file=json_file)
  hist(json_data)
}
