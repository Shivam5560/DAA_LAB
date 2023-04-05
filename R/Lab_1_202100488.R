# Program 1.1: Write a R program to create a list 
    #containing strings, numbers, vectors and a logical values.

list_data = list("Python", "PHP", c(5, 7, 9, 11), TRUE, 125.17, 75.83)
print("Data of the list:")
print(list_data)

# Program 1.2: Write a R program to list containing 
# a vector, a matrix and a list and give names to  the elements in the list


list_data <-  list(c("Red","Green","Black"), matrix(c(1,3,5,7,9,11), nrow = 2),
              list("Python", "PHP", "Java"))
print("List:")
print(list_data)
names(list_data) = c("Color", "Odd numbers", "Language(s)")
print("List with column names:")
print(list_data)


# Program 1.3
print("Sequence of numbers from 20 to 50:")
print(seq(20,50))
print("Mean of numbers from 20 to 60:")
print(mean(20:60))
print("Sum of numbers from 51 to 91:")
print(sum(51:91))

# Program 1.4
v = sample(-50:50, 10, replace=TRUE)
print("Content of the vector:")
print("10 random integer values between -50 and +50:")
print(v)

# Program 1.5
Fibonacci <- numeric(10)
Fibonacci[1] <- Fibonacci[2] <- 1
for (i in 3:10) Fibonacci[i] <- Fibonacci[i - 2] + Fibonacci[i - 1]
print("First 10 Fibonacci numbers:")
print(Fibonacci)

# Program 1.6
prime_numbers <- function(n) {
  if (n >= 2) {
    x = seq(2, n)
    prime_nums = c()
    for (i in seq(2, n)) {
      if (any(x == i)) {
        prime_nums = c(prime_nums, i)
        x = c(x[(x %% i) != 0], i)
      }
    }
    return(prime_nums)
  }
  else 
  {
    stop("Input number should be at least 2.")
  }
} 
prime_numbers(12)

# Program 1.7. Write a R program to print the numbers from 1 to 100
# and print "Fizz" for multiples of 3, print "Buzz" for 
# multiples of 5, and print "FizzBuzz" for multiples of both

arr=seq(1,100)
for(i in arr)
{
  if( i %% 3 == 0 & i %% 5 == 0)
  {
    print(paste(i," FIZZBUZZ ")) 
  }
  else if (i %% 3 == 0)
  {
    print(paste(i," FIZZ "))
  }
  else if (i %% 5 == 0)
  {
    print(paste(i," BUZZ "))
  }
  else
  {
    print(i)
  }
}

# Program 1.8
# Write a R program to extract first 10 english letter in lower case and
# last 10 letters in upper case and 
# extract letters between 22nd to 24th letters in upper case.


print(head(letters,10))
print(tail(letters,10))
print(letters[22:24])


# Program 1.9
print_factors = function(n) {
  print(paste("The factors of",n,"are:"))
  for(i in 1:n) {
    if((n %% i) == 0) {
      print(i)
    }
  }
}
print_factors(4)
print_factors(7)
print_factors(12)

# Program 1.10
nums = c(10, 20, 30, 40, 50, 60)
print('Original vector:')
print(nums) 
print(paste("Maximum value of the said vector:",max(nums)))
print(paste("Minimum value of the said vector:",min(nums)))
