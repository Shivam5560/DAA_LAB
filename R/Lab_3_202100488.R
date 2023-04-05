#3.1. Write a R program to create an empty data frame.

df <- data.frame(col1=integer(),col2=double(),stringsAsFactors = FALSE)
print(str(df))


#3.2. Write a R program to create a data frame from four given vectors.

a=c('Shivam','Ram')
b=c(1,2)
c=c(1.2,3.4)
d=c(TRUE,FALSE)
print(a)
print(b)
print(c)
print(d)
df=data.frame(a,b,c,d)
df


#3.3. Write a R program to get the structure of a given data frame.

a=c('Shivam','Ram')
b=c(1,2)
c=c(1.2,3.4)
d=c(TRUE,FALSE)
df=data.frame(a,b,c,d)
print(str(df))

#3.4. Write a R program to get the statistical summary and nature of the data of a given data frame.
print(summary(df))


#3.5. Write a R program to extract specific column from a data frame using column name.
print(df$d)


#3.6. Write a R program to extract first two rows from a given data frame.
print(df[1:2,])


#3.7. Write a R program to extract 3rd and 1st rows with 1st and 3rd columns from a given data frame.

df
print("3rd row 1st column value")
print(df[3:3,1:1])
print("1st row 3rd column value")
print(df[1:1,3:3])

#3.8. Write a R program to add a new column in a given data frame.

a=c('Shivam','Ram')
b=c(1,2)
c=c(1.2,3.4)
d=c(TRUE,FALSE)
df=data.frame(a,b,c,d)
df1=data.frame(e=c(90,100))
df = cbind(df,df1)
df

#3.9. Write a R program to add new row(s) to an existing data frame.

a=c('Shivam','Ram')
b=c(1,2)
c=c(1.2,3.4)
d=c(TRUE,FALSE)
df=data.frame(a,b,c,d)
df[nrow(df)+1,]=c('Sm',3,7.8,TRUE)
df


#3.10. Write a R program to drop column(s) by name from a given data frame.
print("previous")
df
new <- subset(df,select=-c(d))
print('New ')
print(new)



# Extra
employee_data=c(1,2,3,4,5,6)
employee_name=c('Ak Roy','M K Singh','T R roy','P R Reddy','P N Sarkar','M L Hazra')
salary = c(120000,125000,130000,190000,250000,110000)
data = data.frame(employee_data,employee_name,salary)
data
df_salary = data.frame(attendance=c(90,75,85,95,78,100))
d <- cbind(data,df_salary)
d
# To append rows at last

df_new = data.frame(employee_data=c(7,8),employee_name=c('Shivam','Sourav'),salary=c(19000,56000))
c <- rbind(data,df_new)
print(c)
c[nrow(c)+1,]=c(9,'Sh',29000) 
c[1:1,]=NA
print(c)

