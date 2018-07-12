#' Key-value-index iteration
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
#' These functions convert each element of `x` into a list contain a (k)ey,
#' (v)alue or (i)ndex.
#'
#' For **each element of `x`**, a list with elements `k` and `v`:
#' `k` is the key(name) for the element. Missing names are made `NULL`
#' `v` is that value of that element.
#'
#' `kv` works for vector and list-like objects including tables.
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
#'   mylist = list( a=1, b=2, c=3 )
#'
#'   for( . in kv(mylist))
#'     cat( "key is: ", .$k, "| value is:", .$v, "\n" )
#'
#'  # Lists
#'  li <- list(a=1,b=2,c=3)
#'  kv(li)
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

kv.default <- function(x, ...) .kvi(x, k=TRUE, v=TRUE, i=FALSE )


#' @export
#' @rdname kv
kvi <- function(x, ...) UseMethod('kvi')
#' @export
#' @rdname kv
kvi.default <- function(x, ...) .kvi(x, k=TRUE, v=TRUE, i=TRUE )


#' @export
#' @rdname kv
ki <- function(x, ...) UseMethod('ki')
#' @export
#' @rdname kv
ki.default <- function(x, ...) .kvi(x, k=TRUE, v=FALSE, i=TRUE )


#' @export
#' @rdname kv
vi <- function(x, ...) UseMethod('vi')
#' @export
#' @rdname kv
vi.default <- function(x, ...) .kvi(x, k=FALSE, v=TRUE, i=TRUE )

# This is hte
# kv <-
#   function(x, ...) {
#   kv <- list()
#   if( length(x) == 0 ) return(kv)
#   for( i in 1:length(x) ) {
#     kv[[i]] = list(
#         k=if( is.null(names(x)) ||
#               is.null( names(x)[[i]]) ||
#               names(x)[[i]] == ""
#             )
#               NULL else names(x)[[i]]
#        , v=x[[i]]
#        # , i=i
#     )
#   }
#   names(kv)=names(x)
#   return(kv)
# }

