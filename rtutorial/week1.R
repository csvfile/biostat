# 10월 18일 Ch.2 Descriptive Statistics

summary(trees)
?trees
length(Volume)
attach(trees)
detach(trees)

mean(Volume) # (표본)평균
var(Volume) # (표본)분산
var(Volume) * (length(Volume)-1) / length(Volume) # 모분산
sd(Volume) # 표준 편차(standard deviation)
sqrt(var(Volume)) # 표준 편차(standard deviation)
sd(Volume)/sqrt(length(Volume)) # standard error
sd(Volume)/mean(Volume) # Coefficient of Variation
fivenum(Volume) # Quartiles
quantile(Volume) # Quartiles
IQR(Volume) # Interquartile range
sort(Volume)
boxplot(Volume, col="red") #boxplot
fivenum(Volume)[2]-1.5*IQR(Volume)
fivenum(Volume)[4]+1.5*IQR(Volume)
hist(Volume, probability=TRUE) # histogram
hist(Volume)
lines(density(Volume), col="blue")
stem(Volume) # stem-and-leaf plot
qqnorm(Volume) # Q-Q Normality plot
qqline(Volume, col="blue")
x = rnorm(n=31)
qqnorm(x)
qqline(x)

se = function(x) sd(x)/sqrt(length(x)) # Define a function for standard error
se(trees$Volume)

cv = function(x) sd(x)/mean(x) # Define a function for coefficient of variation
cv(trees$Volume)

# simulation

set.seed(1234)
height = rnorm(n=100000, mean=175, sd=5)
mean(height)
var(height)*(100000-1)/100000
sample(height, size=10) # sampling

M=NULL
V=NULL
for(i in 1:10000){
  x = sample(height, size=10)
  M[i]=mean(x)
  V[i]=var(x)
}
mean(M)
sd(M)
mean(V)
mean(V*9/10)

# 10월 17일 1장 시작하기

chickwts
summary(chickwts)

boxplot(weight ~ feed, data=chickwts)

anova(lm(weight~feed, data=chickwts))

trees
summary(trees)

mean(trees$Volume)

attach(trees)
mean(Volume)
detach(trees)
with(trees, mean(Volume))

trees$Volume + trees$Girth + trees$Height
with(trees, Volume+Girth+Height)
cl

getwd()
setwd("/Users/simon/src")
ex = read.csv("ex.csv")
ex
plot(y~x, data=ex)
