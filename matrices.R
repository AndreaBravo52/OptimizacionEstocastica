#install.packages("matrixcalc")
library(matrixcalc)    

A= matrix(c(0.6, 0.3, 0.1,
              0.3, 0.3, 0.4,
              0.4, 0.1, 0.5), ncol = 3, byrow = TRUE)
matrix.power(A, 20)

B= matrix(c(0.1, 0.1, 0.8,
            0.2, 0.2, 0.6,
            0.3, 0.3, 0.4), ncol = 3, byrow = TRUE)

C= matrix(c(0.3, 0.2, 0.5,
            0.5, 0.1, 0.4,
            0.5, 0.2, 0.3), ncol = 3, byrow = TRUE)

D= matrix(c(0.1, 0.5, 0, 0.4,
            0, 0, 1, 0,
            0, 0, 0, 1,
            1, 0, 0, 0), ncol = 4, byrow = TRUE)

A= matrix(c(1/2, 1/3, 1/6,
            0, 1/3, 2/3,
            1/2, 0, 1/2), ncol = 3, byrow = TRUE)
