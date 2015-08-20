#pregunta 1
x <- c(0.18, -1.54, 0.42, 0.95)
w <- c(2, 1, 3, 1)

weighted.mean(x,w)

#pregunta 2
y <- c(12.96, 5.15, 9.07, 5.36, 13.68, 11.86, 22.49, 6.54, 17.98, 11.43, 9.73, 5.44, 5.73, 8.84, 3.78, 4.74, 4.62, 3.92, 5.2)
x1 <- c(2, 6, 3, 5, 3, 3, 0, 4, 2, 4, 5, 7, 5, 4, 9, 6, 7, 7, 7)
x2 <- c(57.5, 83.2, 67, 92.7, 40.7, 79.8, 23.5, 81, 64.4, 65.8, 69.3, 72.9, 107.5, 92.1, 86.1, 89.4, 93.3, 107.1, 116.9)

length(y) #dimension

X0 <- matrix(c(rep(1,19)) , ncol = 1, nrow = 19 )
X1 <- matrix(x1, ncol = 1, nrow = 19)
X2 <- matrix(x2, ncol = 1 , nrow = 19)

X <- cbind(X0,X1,X2)

#calculo de (x´x)-1
A <- solve(t(X) %*% X)

#calculo de x'y
Y <- matrix(y, ncol = 1 , nrow = 19)
B <- t(X) %*% y 

#calculo beta 
beta <- A %*% B 
beta

# pregunta 3
x <- c(0.8, 0.47, 0.51, 0.73, 0.36, 0.58, 0.57, 0.85, 0.44, 0.42)
y <- c(1.39, 0.72, 1.55, 0.48, 1.19, -1.59, 1.23, -0.65, 1.49, 0.05)

fit <-lm(y ~ x -1)
summary(fit)



