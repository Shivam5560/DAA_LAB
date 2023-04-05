da <- read.csv("C:\\Users\\AI&DS\\Desktop\\Shivam-488\\R\\ca-central-1.csv")
df <- as.data.frame(da)
head(df)
names(df)=c("Time","Type","OS","Region","value")
names(df)

df1 <- head(df,100)

barplot(df1$value,col='darkred')
hist(df1$value)
boxplot(df1$value)
plot(df1$value,col='purple')