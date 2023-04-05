# SHIVAM SOURAV - 202100488


# Program 5.1 Create vector of numeric,logical,complex,character of length 5
x <- vector("numeric",5)
print("Numeric type : ")
print(x)
comp <- vector("complex",5)
print("complex type")
print(comp)
log <- vector("logical",5)
print("Logical type :")
print(log)
chr <- vector("character",5)
print("Character type :")
print(chr)


b <- vector("logical",4)
print(b)
gg = as.numeric(b)
print(gg)


# Program 5.2   R Program to add two vectors of integer type of length(3)
x <- c(1,2,3) 
x <- as.complex(x)
y <- c(4,5,6)
y <- as.complex(y)
print("Addition two vectors:")
print(x+y)

# Program 5.3   R program to append values in empty vector

vec <- c()
a <- c(1,2,3,4,5,6,7,8,9,10)
g <- 1
for(i in seq(1,length(a),2))
{
  vec[g] <- a[i]
  g=g+1
}
print("After appending : ")
print(vec)
gg <- c(a)
print(gg)

# Program 5.4    R Program to multiply two vectors of integer type of length 3

x <- c(1,2,3) 
y <- c(4,5,6)
print("Mutliplication two vectors:")
print(x*y)

# Program 5.5    R Program to divide two vectors of integer type of length 3

x <- c(4,5,6)
y <- c(1,2,3) 
print("Mutliplication two vectors:")
print(x/y)

# 3rd Orthogonal vector In x,y
x <- c(1,2,3)
y <- c(4,5,6)

# Program 5.6 Mean,Median,Mode,Standard deviation

x <- c(seq(1,100))
x[101] = 100
print("Mean = ")
print(mean(x))
print("Median = ")
print(median(x))
print("Mode = ")
names(sort(table(x),decreasing=TRUE)[1])
print(names(sort(table(x),decreasing=TRUE))[1])
print("Standard deviation = ")
print(sd(x))

#5.7. Write a R program to find Sum, Mean and Product of a Vector, ignore element like NA or NaN.
x = c(10, NULL, 20, 30, NA)
print("Sum:")
print(sum(x, na.rm=TRUE))
print("Mean:")
print(mean(x, na.rm=TRUE))  
print("Product:")
print(prod(x, na.rm=TRUE))

#5.8. Write a R program to find the minimum and the maximum of a Vector
x = c(10, 20, 30, 25, 9, 26)
print("Original Vectors:")
print(x)
print("Maximum value of the above Vector:")
print(max(x))
print("Minimum value of the above Vector:")
print(min(x))

#5.9. Write a R program to sort a Vector in ascending and descending order.
x = c(10, 20, 30, 25, 9, 26)
print("Original Vectors:")
print(x)
print("Sort in ascending order:")
print(sort(x))
print("Sort in descending order:")
print(sort(x, decreasing=TRUE))

#5.10. Write a R program to test whether a given vector contains a specified element.
x = c(10,20,30)
print("Original Vectors:")
print(x)
print("Test whether above vector contains 25:")
print(is.element(25, x))
print("Test whether above vector contains 10:")
print(is.element(10, x))



