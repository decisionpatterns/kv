#' Iterate over each_row of a table
#'
#' Iterate over each row
#'
#' @param table to iterate over the rows
#'
#' @details
#'
#' creates a list object for each row of a table
#'
#' @examples
#'
#' each_row( iris[1:3, ])
#'
#' for( . in each_row( iris[1:5,] ) )
#'   print(.$Species)
#'
#'
#' @export

each_row <- function(table)
  apply(table, 1, as.list )


