#2.1. Write a R program to convert a given matrix to a 1 dimensional array.
a=seq(1,24)
new = array(a,dim=c(6,4,1))
print(new)


#2.2. Write a R program to create an array of two 3x3 matrices each with 3 rows and 3 columns from 
#two given two vectors.
arr1 <- array(1:9,dim=c(3,3,1))
arr2 <- array(10:18,dim=c(3,3,1))
n <- array(c(arr1,arr2),dim=c(3,3,2))
print(n)


#2.3. Write a R program to create an 3 dimensional array of 24 elements using the dim() function
di <- array(1:24,dim=c(4,2,3))
di

#2.4. Write a R program to create an array of two 3x3 matrices each with 3 rows and 3 columns from 
# two given two vectors. Print the second row of the second matrix of the array and the element in the 
# 3rd row and 3rd column of the 1st matrix.
arr1 <- array(1:9,dim=c(3,3,1))
arr2 <- array(10:18,dim=c(3,3,1))
n <- array(c(arr1,arr2),dim=c(3,3,2))
print(n[2,,2])
print(n[3,3,1])


#2.5. Write a R program to combine three arrays so that the first row of the first array is followed by 
#the first row of the second array and then first row of the third array.
num1 = rbind(rep(1,3))
print("num1")
print(num1)
num2 = rbind(rep(4,3))
print("num2")
print(num2)
num3 = rbind(rep(7,3))
print("num3")
print(num3)
a = matrix(t(cbind(num1,num2,num3)),ncol=3, byrow=T)
print("Combine three arrays, taking one row from each one by one:")
print(a)


#2.6. Write a R program to create an array using four given columns, three given rows, and two 
# given tables and display the content of the array.
a6 <- array(1:30,dim=c(3,5,2))
print(a6)


#2.7. Write a R program to create a two-dimensional 5x3 array of sequence of even integers greater 
#than 50.
s=seq(from=50,length.out=15,by=2)
even <- array(s,dim=c(5,3))
print(even)
