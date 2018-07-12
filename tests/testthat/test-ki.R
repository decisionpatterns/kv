context("ki")

context(".. list")
test_that("ki", {

  li <- list( a=1, b=2, c=3)

  . <- ki(li)
  ans <-
    structure(
      list(
        a = structure( list(k = "a", i = 1), .Names = c("k","i") ),
        b = structure( list(k = "b", i = 2), .Names = c("k", "i") ),
        c = structure( list(k = "c", i = 3), .Names = c("k", "i") )
      ),
      .Names = c("a","b", "c")
    )

  expect_is(., "list")
  expect_length(.,3)
  expect_equal(., ans)

})

context(".. vector")
test_that("ki", {

  v <- c( a=1, b=2, c=3 )

  . <- ki(v)
  ans <-
    structure(
      list(
        a = structure(list(k = "a", i =1), .Names = c("k","i")),
        b = structure(list(k = "b", i =2), .Names = c("k", "i")),
        c = structure(list(k = "c", i =3), .Names = c("k", "i"))
      ),
      .Names = c("a","b", "c")
    )

  expect_is(., "list")
  expect_length(.,3)
  expect_equal(., ans)

})

context(".. missing names")
test_that("ki", {

  li <- list( a=1, b=2, c=3)

  . <- ki(li)
  ans <-
    structure(
      list(
        a = structure(list(k = "a", i =1), .Names = c("k",
                                                       "i")),
        b = structure(list(k = "b", i =2), .Names = c("k", "i")),
        c = structure(list(k = "c", i =3), .Names = c("k", "i"))
      ),
      .Names = c("a","b", "c")
    )

  expect_is(., "list")
  expect_length(.,3)
  expect_equal(., ans)

})
