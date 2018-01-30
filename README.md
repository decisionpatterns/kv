# kv - Key Value Iteration in R

Other languages (e.g. **Python**) have a shorthand way to reference an objects names
or values while iterating. This is not something built into **R**. The **kv** 
packages steps in to provided a simple/no magic mechanism 
for key-value iteration. It is best illustrated by the following example: 

``` r
mylist = list( a=1, b=2, c=3)              # List to iterate over

for( . in kv(mylist) ) {                   # Wrap `mylist` by kv()
  cat( "The key is: ", .$k, "\n")          # .$k refers to keys
  cat( "The value is: ", .$v, "\n\n" )     # .$v refers to values 
}  
```

`kv` works by transforming its argument into a list-of-lists, each element 
having the appropriate `k` and `v`. See `?kv` for details.

**NB:** the use of `.` is a convention, any valid R name will work in its place.


## Installation 

Latest Release:

    install.packages('kv')  # Soon


Development Version:

    install.packages('devtools')
    devtools::install_github('decisionpatterns/kv')


## Functions

The only function in this package is `kv` which turns its argument into a list 
of key-value pairs.  The use of `.` is a simple convention that allows use to 
use the concise syntak `.$k` and `.$v`.
 

## References

* [(SO:for-loop-in-r-with-key-value](http://stackoverflow.com/questions/18572921/for-loop-in-r-with-key-value)
* [SO:iterate-over-key-value-pair-from-a-list](http://stackoverflow.com/questions/4500106/iterate-over-key-value-pair-from-a-list)
