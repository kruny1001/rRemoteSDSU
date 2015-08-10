x <- 10
f1 <- function(x) {
  function() {
    x + 10
  }
}
f1(1)()