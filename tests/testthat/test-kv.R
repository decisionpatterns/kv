context("kv")

context(".. list")
test_that("kv", {

  li <- list( a=1, b=2, c=3)

  . <- kv(li)
  ans <-
    structure(
      list(
        a = structure(list(k = "a", v = 1), .Names = c("k", "v")),
        b = structure(list(k = "b", v = 2), .Names = c("k", "v")),
        c = structure(list(k = "c", v = 3), .Names = c("k", "v"))
      ),
      .Names = c("a","b", "c")
    )

  expect_is(., "list")
  expect_length(.,3)
  expect_equal(., ans)

})

context(".. vector")
test_that("kv", {

  v <- c( a=1, b=2, c=3 )

  . <- kv(v)
  ans <-
    structure(
      list(
        a = structure( list(k = "a", v = 1), .Names = c("k", "v") ),
        b = structure( list(k = "b", v = 2), .Names = c("k", "v") ),
        c = structure( list(k = "c", v = 3), .Names = c("k", "v") )
      ),
      .Names = c("a","b", "c")
    )

  expect_is(., "list")
  expect_length(.,3)
  expect_equal(., ans)

})

context(".. missing names")
test_that("kv", {

  li <- list( a=1, b=2, c=3)

  . <- kv(li)
  ans <-
    structure(
      list(
        a = structure( list(k = "a", v = 1), .Names = c("k","v") ),
        b = structure( list(k = "b", v = 2), .Names = c("k", "v") ),
        c = structure( list(k = "c", v = 3), .Names = c("k", "v") )
      ),
      .Names = c("a","b", "c")
    )

  expect_is(., "list")
  expect_length(.,3)
  expect_equal(., ans)

})
