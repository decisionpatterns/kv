#' @details
#'
#' `kvi` adds an index to element index to the resulting list so the
#' index iteration can also be tracked.
#'
#' @examples
#'
#' x <- c( a="Foo", b="Bar" )
#' kvi(x)
#'
#' for( . in kvi(x) )
#'   cat( .$i, .$k, .$v, "\n")
#'
#' @export
#' @rdname kv

kvi <- function(x, ...) UseMethod('kvi')

#' @export
#' @rdname kv

kvi.default <- function(x, ...) {
  kv <- list()
  if( length(x) == 0 ) return(kv)
  for( i in 1:length(x) ) {
    kv[[i]] = list(
        k=if( is.null(names(x)) ||
              is.null( names(x)[[i]]) ||
              names(x)[[i]] == ""
            )
              NULL else names(x)[[i]]
       , v=x[[i]]
       , i=i
    )
  }
  names(kv)=names(x)
  return(kv)
}

