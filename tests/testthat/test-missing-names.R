context("missing-names")

context(".. one (or more) missing names")
test_that("one-missing-name", {

  li <- list( a=1, 2, c=3)

  . <- kv(li)
  ans <-
    structure(
      list(
        a = structure(list(k = "a", v = 1), .Names = c("k","v")),
        structure(list(k = NULL, v = 2)   , .Names = c("k", "v")),
        c = structure(list(k = "c", v = 3), .Names = c("k", "v"))
      ),
      .Names = c("a", "", "c")
    )

  expect_is(., "list")
  expect_length(.,3)
  expect_equal(., ans)
  expect_null(.[[2]]$k)
    expect_true( ! is.null(.[[1]]$k) )
  expect_true( ! is.null(.[[3]]$k) )

})

context(".. all names missing (i.e. unnamed")
test_that("all names missing", {

  li <- list( 1, 2, 3)

  . <- kv(li)

  ans <-
    list(
      structure(list(k = NULL, v = 1), .Names = c("k", "v")),
      structure(list(k = NULL, v = 2), .Names = c("k", "v")),
      structure(list(k = NULL, v = 3), .Names = c("k", "v"))
    )

  expect_is(., "list")
  expect_length(.,3)
  expect_equal(., ans)
  expect_null(.[[2]]$k)
  expect_true( is.null(.[[1]]$k) )
  expect_true( is.null(.[[2]]$k) )
  expect_true( is.null(.[[3]]$k) )

})
