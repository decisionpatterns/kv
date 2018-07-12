context("vi")

context(".. list")
test_that("vi", {

  li <- list( a=1, b=2, c=3)

  . <- vi(li)
  ans <-
    structure(
      list(
        structure( list(v = 1, i = 1), .Names = c("v","i") ),
        structure( list(v = 2, i = 2), .Names = c("v", "i") ),
        structure( list(v = 3, i = 3), .Names = c("v", "i") )
      )
      # , .Names = c("a","b", "c")
    )

  expect_is(., "list")
  expect_length(.,3)
  expect_equal(., ans)

})

context(".. vector")
test_that("vi", {

  v <- c( a=1, b=2, c=3 )

  . <- vi(v)
  ans <-
    structure(
      list(
        structure(list(v = 1, i =1), .Names = c("v","i")),
        structure(list(v = 2, i =2), .Names = c("v", "i")),
        structure(list(v = 3, i =3), .Names = c("v", "i"))
      )
      # , .Names = c("a","b", "c")
    )

  expect_is(., "list")
  expect_length(.,3)
  expect_equal(., ans)

})

context(".. missing names")
test_that("vi", {

  li <- list( a=1, b=2, c=3)

  . <- vi(li)
  ans <-
    structure(
      list(
        structure(list(v = 1, i =1), .Names = c("v", "i")),
        structure(list(v = 2, i =2), .Names = c("v", "i")),
        structure(list(v = 3, i =3), .Names = c("v", "i"))
      )
      # , .Names = c("a","b", "c")
    )

  expect_is(., "list")
  expect_length(.,3)
  expect_equal(., ans)

})
