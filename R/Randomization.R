#' Randomization class
#'
#' A class for randomization methods in clinical trials
#'
#' @export
Randomization <- R6::R6Class(
  "Randomization",
  public = list(
    #' @description validate input parameters.
    validate = function() {
      stop("Not implemented", call. = FALSE)
    },
  
    #' @description
    #' Summarize the distribution.
    summary = function() {
      stop("Not implemented", call. = FALSE)
    }
  )
)

#' @export
summary.Randomization <- function(object, ...) {
  object$summary(...)
}
