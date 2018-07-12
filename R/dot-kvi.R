#' .kvi
#'
#' Internal function for producing list-of-lists
#'
#' @param x object such as vector or list to separate into key value pairs
#' @param k logical; whether to output (k)ey
#' @param v logical; whether to output (v)alue
#' @param i logical; whether to output (i)ndex
#'
#' @details
#'
#' **DO NOT DIRECTLY USE THIS FUNCTION**. Use [kvi()], [kv()], instead.
#'
#' Produces list-of-list where the internal lists contain keys, values or
#' indices. Useful for iterating. See [kv()].
#'
#' @md
# @nonexport


.kvi <- function(x, k=TRUE, v=TRUE, i=TRUE ) {
  kv <- list()
  if( length(x) == 0 ) return(kv)

  for( ii in 1:length(x) ) {

    li <- list()
    if(k) li['k'] <-if( is.null(names(x)) ||
                   is.null( names(x)[[ii]]) ||
                   names(x)[[ii]] == ""
                 )
                   list(NULL) else names(x)[[ii]]

    if(v) li['v'] <- x[ii]

    if(i) li['i'] <- ii

    kv[[ii]] <- li

  }
  if(k) names(kv)=names(x)
  return(kv)
}
