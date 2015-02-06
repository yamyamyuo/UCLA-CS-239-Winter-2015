x <- c(44.4,45.9,41.9,53.3,44.7,44.1,50.7,45.2,60.1)
y <- c(2.6,3.1,2.5,5.0,3.6,4.0,5.2,2.8,3.8)
cor.text(x,y,method="spearman")

cor(x,y,method="spearman")
#[1] 0.6
cor(x,y,method="pearson")
#[1] 0.5711816

z <- cor(x,y,method="spearman")
reg1 <- lm(x~y)
plot(x,y)
abline(reg1)
reg1 <- lm(y~x)
plot(x,y)
abline(reg1)
?lm