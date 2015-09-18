library(jsonlite)

#parse input from JSON into R
jsoninput <- '{"x" : [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]}'
fnargs <- fromJSON(jsoninput)

#the actual function call
result <- do.call(stats::sd, fnargs)

#convert result back to JSON
jsonoutput <- toJSON(result)