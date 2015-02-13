library(ggplot2)
head(iris)
qplot(Sepal.Length, Petal.Length, data = iris, color = Species, size=Petal.Width, alpha = I(0.7),xlab = "Sepal Length", ylab = "Petal Length", main = "Sepal vs. Petal Length in Fisher's Iris data")
movies = data.frame(
  director = c("spielberg", "spielberg", "spielberg", "jackson", "jackson"),
  movie = c("jaws", "avatar", "schindler's list", "lotr", "king kong"),
  minutes = c(124, 163, 195, 600, 187)
)
qplot(director, data = movies, geom = "bar", ylab = "# movies", main = "Brought IT on MOVIES")
qplot(director, weight = minutes, data = movies, geom = "bar", ylab = "total length (min.)")
qplot(Sepal.Length, Petal.Length, data = iris, geom = "line", color = Species) 
qplot(age, circumference, data = Orange, geom = c("point", "line"),
      colour = Tree,
      main = "How does orange tree circumference vary with age?")
qplot(age, circumference, data = Orange, geom = c("point", "line"), colour = Tree, main="is this thing turned on?")
dsmall <- diamonds[sample(nrow(diamonds), 100), ]
pd0 <- ggplot(data = dsmall, aes(carat, price))
pd1 <- pd0 + geom_point()
pd1
pd2 <- pd1 + geom_smooth()
pd2
pd1 + geom_smooth(span = 0.1)
pd1 + geom_smooth(span = 0.9)
pd1 + geom_smooth(method = "lm")
ppc <- ggplot(data = diamonds, aes(x = color, y = price/carat))
ppc + geom_point()
ppc + geom_jitter()
ppc + geom_jitter(alpha = 0.1)
ppc + geom_boxplot()
ppc + geom_boxplot() +geom_jitter()
ppc + geom_boxplot(fill = "gray")
summary(diamonds$carat)
pcarat <- ggplot(data = diamonds, aes(x = carat))
pcarat + geom_histogram()
pcarat + geom_histogram() + scale_x_continuous(limits = c(0, 3))
pcarat + geom_histogram(binwidth = 1) + scale_x_continuous(limits = c(0, 3))
pcarat + geom_histogram(binwidth = 0.1) + scale_x_continuous(limits = c(0, 3))
pcarat + geom_histogram(binwidth = 0.01) + scale_x_continuous(limits = c(0, 3))
pcarat + geom_density() + scale_x_continuous(limits = c(0, 3))
pcarat + geom_density(adjust = 0.5) + scale_x_continuous(limits = c(0, 3))
pcarat + geom_density(adjust = 5) + scale_x_continuous(limits = c(0, 3))
pcarat + geom_histogram(binwidth = 0.1, aes(fill = color)) + scale_x_continuous(limits = c(0, 3))
pcarat + geom_histogram(binwidth = 0.1, aes(color = color)) + scale_x_continuous(limits = c(0, 3))
pcarat + geom_density(aes(color = color)) + scale_x_continuous(limits = c(0,3))
pcarat + geom_density(aes(fill = color)) + scale_x_continuous(limits = c(0, 3))
                                                                         
p <- ggplot(mtcars, aes(factor(cyl), mpg))
p+geom_violin(aes(fill = factor(cyl))) + geom_jitter(height = 0)

                                                                        