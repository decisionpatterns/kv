# TODO.md - kv

A short list of things to do in the package.

 - [ ] Decide whether missing names should be consistently "" or `NULL`.
       list(a=1, 2, c=3) %>% names()    # a "" c
       list(1,2,3) %>% names            # NULL
       
 - [ ] Add tests 
