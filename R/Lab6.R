# PROGRAM 7.1 WRITE A R PROGRAM TO FIND THE LEVELS OF FACTOR OF A GIVEN VECTOR
vec <- c(1,3,3,4,NA,2,3,8,9)
print(vec)
fact <- factor(vec)
print(fact)
print(levels(fact))
fact <- factor(c(rep(0,times=length(vec))))
fact
a <- levels(fact)
print(a)

class(fact)
matr <- matrix(fact,nrow=3,ncol=3)
matr



# PROGRAM 7.2 WRITE A R PROGRAM TO CAHNGE THE FIRST LEVEL OF A FACTOR WITH ANOTHER LEVEL OF A GIVEN FACTOR
v = c("a","b","a","c","b")
print(v)
f = factor(v)
print(f)
unique(f)

# PROGRAM 7.3 WRITE A PROGRAM TO CREATE AN ORDERED FACTOR FROM DATA CONSISTING OF THE NAMES OF MONTHS
v <- c("January","February","March","April","May","June","July","August","September","October","November"
       ,"December","October","November","December")
print(v)
f = factor(v)
table(f)

for(i in levels(f))
{
    ctr <- 0
    for(j in f)
    {
      if(i==j)
      {
        ctr = ctr+1
      }
    }
    print(i)
    print(ctr)
}
f


# Program 7.4 Concatenate two factor in a single factor

a <- factor(c(1,2,3,3,1))
b <- factor(c("A","B","C","A"))
a
b
factor(c(a,b))

# PROGRAM 7.5 Write a R program to convert a given pH levels of soil to an ordered factor.
