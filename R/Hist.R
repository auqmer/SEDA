Hist <- function(vec, curve = TRUE, color = "skyblue") {
  nm <- deparse(substitute(vec))
  hist(vec, breaks = 'fd', col = color, probability = TRUE, 
            main = label(vec), xlab = nm)
  if(curve) {
  curve(dnorm(x, mean = mean(vec, na.rm = TRUE), 
              sd = sd(vec, na.rm = TRUE)), add = TRUE, col = "red",
        lwd = 2)
  }
}

