#' Key-value iteration
#'
#' Creates a list with `k` and `v` elements useful for iteration in loops.
#'
#' @param x object such as vector or list to separate into key value pairs
#' @param ... additional arguments for other S3 functions, currently unused.
#'
#' @details
#'
#' No magic here.
#'
#' `kv` converts its argument(`x`) into a list-of-lists of key-value pairs
#' For each element of `x`, a list with elements `k`
#' and `v` are created.
#' `k` is the name/key and is given the name of the element of `x`.
#' `v` is that element.
#'
#' For many cases, key-value iteration can be done with `*apply` or
#' `paste` functions. This is made to be explicit and work on a variery of
#' objects.
#'
#' `kv` is an S3 generic function.
#'
#' @references
#' * [SO: for-loop-in-r-with-key-value](http://stackoverflow.com/questions/18572921/for-loop-in-r-with-key-value)
#' * [SO: iterate-over-key-value-pair-from-a-list](http://stackoverflow.com/questions/4500106/iterate-over-key-value-pair-from-a-list)
#'
#' @return
#' A named list-of-lists; each element of `x` becomes a one element list
#' with elements `k` and `v` representing the keys and value respectively.
#'
#' @examples
#'
#'   mylist = list( a=1, b=2, c=3)
#'
#'   for( . in kv(mylist)) {
#'     cat( "The key is: ", .$k, "\n" )
#'     cat( "The value is: ", .$v, "\n" )
#'   }
#'
#'  # Lists
#'  li <- list(a=1,b=2,c=3)
#'  kv(li)
#'
#'  for( . in kv(li) )
#'    cat( .$k, ":", .$v, "\n")
#'
#'  for( . in kv( list() ))
#'    cat( .$k, ":", .$v, "\n")
#'
#'  for( . in kv(li) )
#'    cat( .$k, ":", .$v, "\n")
#'
#'  # vectors
#'  v <- c(a=1, b=2, c=3 )
#'  kv(li)
#'
#'
#' @md
#' @export

kv <- function(x, ...) UseMethod('kv')

#' @export
#' @rdname kv

kv.default <- function(x, ...) {
  kv <- list()
  if( length(x) == 0 ) return(kv)
  for( i in 1:length(x) ) {
    kv[[i]] = list( k=names(x)[[i]], v=x[[i]] )
  }
  names(kv)=names(x)
  return(kv)
}

