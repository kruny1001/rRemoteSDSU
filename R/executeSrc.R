executeSrc <- function(text){
  writeLines(text, con="input.R")
  chart = source('input.R', local = TRUE)$value
  # chart$set(width = 700)
  # chart$setTemplate(page = 'rChart2.html')
  chart$save('output.html', cdn = TRUE)
  invisible();
}