
#' scan 
#' 
#' This is a wrapper for the OpenCPU application. It is a single function that calls out to various plot types.
#' The function prints a plot to the graphics device and returns nothing.
#' 
#' @param type type of plot to create. One of "smoothplot", "highlowplot", "areaplot".
#' @param ticker stock ticker symbol. E.g. "GOOG".
#' @param from start date. Either string or date object.
#' @param to end date. Either string or date object.
#' @param current include the current price of this stock. TRUE/FALSE.
#' @export
#' @import rjson
#' 
#' 
#' 


json_file <- "https://statsdsu.firebaseio.com/data1.json"
json_data <- fromJSON(paste(readLines(json_file), collapse=""))
hist(json_data)