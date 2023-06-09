# Generated by using Rcpp::compileAttributes() -> do not edit by hand
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#' Get dictionary information
#'
#' @param sys_dic String scalar.
#' @param user_dic String scalar.
#' @return data.frame.
#'
#' @name dictionary_info
#' @export
NULL

#' Get transition cost between pos attributes
#'
#' @param rcAttr Integer.
#' @param lcAttr Integer.
#' @param sys_dic String.
#' @param user_dic String.
#' @return Numeric.
#'
#' @name transition_cost
#' @keywords internal
NULL

#' Tokenizer for debug use
#'
#' Tokenizes a character vector
#' and returns all possible results out of the tokenization process.
#' The returned data.frame contains additional attributes for debug usage.
#'
#' @param text String.
#' @param sys_dic String.
#' @param user_dic String.
#' @param partial Logical.
#' @return data.frame.
#'
#' @name posDebugRcpp
#' @keywords internal
#' @export
NULL

dictionary_info <- function(sys_dic = "", user_dic = "") {
    .Call(`_gibasa_dictionary_info`, sys_dic, user_dic)
}

transition_cost <- function(rcAttr, lcAttr, sys_dic = "", user_dic = "") {
    .Call(`_gibasa_transition_cost`, rcAttr, lcAttr, sys_dic, user_dic)
}

posDebugRcpp <- function(text, sys_dic = "", user_dic = "", partial = 0L) {
    .Call(`_gibasa_posDebugRcpp`, text, sys_dic, user_dic, partial)
}

#' Call tagger inside 'RcppParallel::parallelFor' and return a data.frame.
#'
#' @param text Character vector.
#' @param sys_dic String scalar.
#' @param user_dic String scalar.
#' @param partial Logical.
#' @param grain_size Integer (larger than 1).
#' @return data.frame.
#'
#' @name posParallelRcpp
#' @keywords internal
#' @export
NULL

posParallelRcpp <- function(text, sys_dic = "", user_dic = "", partial = 0L, grain_size = 1L) {
    .Call(`_gibasa_posParallelRcpp`, text, sys_dic, user_dic, partial, grain_size)
}

# Register entry points for exported C++ functions
methods::setLoadAction(function(ns) {
    .Call('_gibasa_RcppExport_registerCCallable', PACKAGE = 'gibasa')
})
