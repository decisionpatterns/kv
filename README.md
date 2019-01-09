## kv - key-value-index iteration in R

<!--
[![CRAN_Status_Badge](https://www.r-pkg.org/badges/version/kv)](https://cran.r-project.org/package=kv)
[![Downloads](https://cranlogs.r-pkg.org/badges/kv?color=brightgreen)](https://www.r-pkg.org/pkg/kv)
[![](https://cranlogs.r-pkg.org/badges/grand-total/kv)](http://cran.rstudio.com/web/packages/kv/index.html)
[![Software Impact](http://depsy.org/api/package/r/kv/badge.svg)](http://depsy.org/package/r/kv)
[![Coverage Status](https://img.shields.io/codecov/c/github/decisionpatterns/kv/master.svg)](https://codecov.io/github/decisionpatterns/kv?branch=master)
-->

Other languages (e.g. **Python**) have a native,shorthand way to reference an 
object's key or values while iterating. **R** does not. This is where **kv** 
steps in. 



## Key/Value/Index Iteration 

*kv* provides a simple/no magic mechanism for key-value-index iteration. 
It is best illustrated by the simple example: 

```r
mylist = list( a=1, b=2, c=3)              # List to iterate over

for( . in kv(mylist) )
  cat( "key is: ", .$k, "| value is:", .$v, "\n" )
}  
```

`kv` works by transforming its argument into a list-of-lists, each element 
having the appropriate `k` and `v`. See `?kv` for details.

**NB:** the use of `.` is a convention, any valid R name will work in its place.

There are also additional funtions:
* `kvi()`: uses keys, values and indexes 
* `kv()` : uses keys and values
* `ki()` : uses keys and indexes 
* `vi()` ; uses values and indexes


## Table-row iterations

**kv** also allows for iteration over rows in a table, for example:

```r
for( . in each_row(iris) )
  cat( .$Species, ": ", .$Sepal.Lenght )
```

## Installation 

Latest Release:

    install.packages('kv')  # Soon


Development Version:

    install.packages('devtools')
    devtools::install_github('decisionpatterns/kv')


## Functions

The function of this packages are permutation of letters 'k', 'v' and 'i'. Each 
function turns its argument into a list-of-lists with the corresponding (k)ey, 
(v)alue and/or (i) set.  

The use of `.` is a simple convention that allows use to use the concise 
syntak `.$k`, `.$v`  or `.$i` to access the element. 
 

## References

* [SO:for-loop-in-r-with-key-value](http://stackoverflow.com/questions/18572921/for-loop-in-r-with-key-value)
* [SO:iterate-over-key-value-pair-from-a-list](http://stackoverflow.com/questions/4500106/iterate-over-key-value-pair-from-a-list)
