

library(jsonlite)
meanJson <- function(text){
args <- fromJSON(text)
output <- do.call(stats::rnorm, args)
return(toJSON(output))
}
