## Put comments here that give an overall description of what your
 ## functions do
 
-## Write a short comment describing this function
+## Similar to the given example this function does the following: 1.set the value 2.get the value 3.set the inverse 4. get the inverse
 
 makeCacheMatrix <- function(x = matrix()) {
 
-}
+  i <- NULL
+  set <- function(y) 
+  {
+    x <<- y
+    i <<- NULL
+  }
+  get <- function() 
+    x
+  setinverse <- function(inverse)
+    i <<- inverse
+  getinverse <- function()
+    i
+  list(set = set, get = get,
+       setinverse = setinverse,
+       getinverse = getinverse)
 
+}
+cachemean <- function(x, ...) {
+        m <- x$getmean()
+        if(!is.null(m)) {
+                message("getting cached data")
+                return(m)
+        }
+        data <- x$get()
+        m <- mean(data, ...)
+        x$setmean(m)
+        m
+}
 
 ## Write a short comment describing this function
 
 cacheSolve <- function(x, ...) {
         ## Return a matrix that is the inverse of 'x'
+         i <- x$getinverse()
+        if(!is.null(m)) {
+                message("getting cached data")
+                return(m)
+        }
+        data <- x$get()
+        i <- solve(data, ...)
+        x$setinverse(i)
+        i
 }
