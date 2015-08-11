

library(jsonlite)
meanJson <- function(text){
args <- fromJSON('{"n":3, "mean": 10, "sd":10}')
output <- do.call(stats::rnorm, args)
result(toJSON(output))
}
