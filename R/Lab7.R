# PRORAM 6.1 : WRITE A R PROGRAM TO CREATE A LIST CONTAINING STRINGS,NUMBERS,VECTORS AND A LOGICAL VALUES
arr <- list("Shivam",1,TRUE,1.56,c(1,2),{})
arr
# WAP IN R TO DISPLAY THE EVEN NUMBER IN A FORM OF A LIST
even <- list(seq(2,50,2))
even
class(even)

gg <- list()
a <- seq(2,50,2)
for(i in a)
{
  gg[length(gg)+1] = i
}
print(gg)

# PROGRAM 6.2 CREATE A LIST 
a <- list(c(1,2),matrix(c(1,2,3,4,5,6),nrow=2),list(90,"A"),1,TRUE,NA,"SHi")
names(a) = c("Numbers","MAtrix","List")
for(i in a)
{
  print(class(i))
  a <- a[-1] 
}
a <- list(c(1,2),matrix(c(1,2,3,4,5,6),nrow=2),list(90,"A"),1,TRUE,NA,"SHi")
sapply(a, function(i) class(i)=="numeric")