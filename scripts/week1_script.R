library(Matrix)
library(random)
library(matlib)
library(ggplot2)

#Creating random numbers (always saved as a matrix)
rnd1 <- randomNumbers(n=6, col=2, min=0, max=100, base=10)
rnd2 <- randomNumbers(n=9, col=3, min=0, max=100, base=10)
rnd3 <- randomNumbers(n=6, col=3, min=0, max=100, base=10)

#Initializing a Matrix
m1 <- matrix(data=rnd1, nrow=3, ncol=2)
m2 <- matrix(data=rnd2, nrow=3, ncol=3)
m3 <- matrix(data=rnd3, nrow=2, ncol=3)

#Transposing the matrix (might be helpful if I want to switch col and row for analysis)
m1_transpose <- t(m1)

#Finding the determinant (not really sure where this applies in neuro)
m2_determinant <- det(m2)

# Computing the inverse of a matrix
m2_inverse <- solve(m2)

#Multiplying matrices
m4 <- m3 %*% m1

dataframe_data = as.data.frame(m1)

ggplot(dataframe_data, aes(x = V1, y = V2)) + 
  geom_line()+
  geom_point()+
  theme_minimal()


