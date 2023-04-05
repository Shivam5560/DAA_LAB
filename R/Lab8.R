data("iris")
head(iris)
summary(iris)
#View(iris)
str(iris)

print(sapply(iris,function(x) min(as.numeric(x))))
print(sapply(iris,function(x) max(as.numeric(x))))

plot(iris$Petal.Length,iris$Petal.Width)
plot(iris$Petal.Length,iris$Petal.Width,pch=2)
plot(iris$Petal.Length,iris$Petal.Width,pch=1,col='red')
iris$Species <- as.factor(iris$Species)
speciesID <- as.numeric(iris$Species)
plot(iris$Petal.Length,iris$Petal.Width,pch=speciesID,col='blue')

mat <- as.matrix(iris[-5])
barplot(mat,col='darkred',xlab='Sepal-length',ylab='sepal-width')
hist(iris$Sepal.Length)
boxplot(mat)
plot(iris$Petal.Length,iris$Petal.Width,col='darkred')
heatmap(mat)


