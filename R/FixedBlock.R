#' Permuted fixed block randomization
#'
#' @description A class for permuted fixed block randomization.
#'
#' @export
FixedBlock <- R6::R6Class(
  "FixedBlock",
  inherit = Randomization,
  public = list(
    
    #' @field block vector of treatments to be included in each block
    block = NULL, 
    
    #' @description
    #' Validate input parameters.
    #'
    #' @param block vector of treatments to be included in each block
    validate = function(block) {
      if (!is.vector(block)) {
        stop("`block` must be vector.", call. = FALSE)
      }
    },
    
    #' @description
    #' Create a new exponential distribution object.
    #'
    #' @param block vector of treatments to be included in each block
    #'
    #' @return A new `Exponential` object.
    initialize = function(block) {
      self$block <- block
    },

    #' @description summarize the distribution.
    summary = function() {
      paste0(
        "It is a permuted fixed block randomization with randomization ratio of ",
        table(self$block) |> names() |> paste0(collapse = " : "),
        "=",
        table(self$block) |> as.vector() |> paste0(collapse = " : "),
        "."
      )
    }
  )
)