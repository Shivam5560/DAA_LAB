#4.1. Write a R program to create a blank matrix.
a <- matrix(nrow=4,ncol=3)
print(a)


#4.2. Write a R program to create a matrix taking a given vector of numbers as input. Display the matrix.
arr <- matrix(c(1:12),nrow=4,byrow=TRUE)
print(arr)


#4.3. Write a R program to create a matrix taking a given vector of numbers as input and define the 
# column and row names. Display the matrix.
d1 <- c('a','b','c','d')
d2 <- c('e','f','g','h')
a <- matrix(c(1:16),nrow=4,ncol=4,byrow=TRUE,dimnames = list(d1,d2))
print(a)



#4.4. Write a R program to access the element at 3rd column and 2nd row, only the 3rd row and only 
#the 4th column of a given matrix.

d1 <- c('a','b','c','d')
d2 <- c('e','f','g','h')
a <- matrix(c(1:16),nrow=4,ncol=4,byrow=TRUE,dimnames = list(d1,d2))
print(a)
print('access the element at 3rd column and 2nd row = ')
print(a[2,3])
print('3rd row only :')
print(a[3,])
print('4th column only :')
print(a[,4])



#4.5. Write a R program to create two 2x3 matrix and add, subtract, multiply and divide the 
#matrixes.
a <- matrix(c(1:6),nrow=2,ncol=3,byrow=TRUE)
b <- matrix(c(7:12),nrow=2,ncol=3,byrow=TRUE)
print('A : ')
print(a)
print('B : ')
print(b)
print('A + B : ')
print(a+b)
print('A - B : ')
print(a-b)
print('A * B : ')
print(a*b)
print('A / B : ')
print(a/b)




#4.6. Write a R program to create a matrix from a list of given vectors.
a  <- c(1:4)
b  <- c(5:8)
arr <- matrix(c(a,b),nrow=2,ncol=4,byrow=TRUE)
arr




#4.7. Write a R program to extract the sub-matrix whose rows have column value > 7 from a given matrix.
row_names = c("row1", "row2", "row3", "row4")
col_names = c("col1", "col2", "col3", "col4")
M = matrix(c(1:16), nrow = 4, byrow = TRUE, dimnames = list(row_names, col_names))
print("Original Matrix:")
print(M)
result = M[M[,3] > 7,]
print("New submatrix:")
print(result)



#4.8. Write a R program to convert a matrix to a 1 dimensional array.

M = matrix(c(1:16), nrow = 4, byrow = FALSE)
print("Original Matrix:")
print(M)
print('1d array : ')
print(array(M))




#4.9. Write a R program to create a correlation matrix from a dataframe of same data type.
d = data.frame(x1=rnorm(5),
               x2=rnorm(5),
               x3=rnorm(5))
print("Original dataframe:")   
print(d)
result = cor(d) 
print("Correlation matrix:")
print(result)



#4.10. Write a R program to convert a given matrix to a list of column-vectors
M = matrix(c(1:16), nrow = 4, byrow = FALSE)
print("Original Matrix:")
print(M)
l =  split(M, rep(1:ncol(M), each = nrow(M)))
print(l)

# Additional Program

ab = rep(0,2*3*3)
rowname=c(1:2)
colname <- c('p','i','r')
g = array(ab,c(2,3,3),dimnames = list(rowname,colname))
print(g)

  



