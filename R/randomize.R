#' Randomize subjects
#'
#' @param x the object
#' @param ... Additional arguments (not used).
#'
#' @return TBA
#'
#' @export
randomize <- function(x, ...) {
  UseMethod("randomize", x)
}

#' @export
randomize.FixedBlock <- function(x, sample_size, ...) {
  
  length_block <- length(x$block)
  n_block <- ceiling(sample_size / length_block)
  n_total <- n_block * length_block
  
  block_to_sample <- rep(x$block, each = n_block)
  sample_order <- rep(1:n_block, length_block)
  sample_order <- sample_order + stats::runif(n_total)
  
  ans <- (block_to_sample[order(sample_order)])[1:sample_size]
  
  return(ans)
}