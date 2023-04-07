#-----------------------------
# Elements of Linear algebra 2
#-----------------------------

# Create matrix A and vector b
library(matlib)

A <- matrix(c(3,2,4,0,1,2,-1,1,-1), nrow = 3, byrow=TRUE)
A
#      [,1] [,2] [,3]
# [1,]    3    2    4
# [2,]    0    1    2
# [3,]   -1    1   -1

b <- c(0,2,1)

# (reduced) Row echelon form using the Gauss method
echelon(A, b, verbose=TRUE, fractions=TRUE)
#...
# row: 3 
# 
# multiply row 3 by 5/9 
# [,1] [,2] [,3] [,4]
# [1,]    1    0  6/5 -2/5
# [2,]    0    1  1/5  3/5
# [3,]    0    0    1  7/9
# 
# multiply row 3 by 6/5 and subtract from row 1 
# [,1] [,2] [,3] [,4]
# [1,]    1    0    0 -4/3
# [2,]    0    1  1/5  3/5
# [3,]    0    0    1  7/9
# 
# multiply row 3 by 1/5 and subtract from row 2 
# [,1] [,2] [,3] [,4]
# [1,]    1    0    0 -4/3
# [2,]    0    1    0  4/9
# [3,]    0    0    1  7/9

# example: rank of matrices

# example 1
A <- matrix(c(2,0,2,1,1,-1/2), nrow = 3, byrow=TRUE) 
A
b <- c(1,4,0)

# rank of A and rank of the augmented matrix B
c(qr(A)$rank, qr(cbind(A,b))$rank)
# [1] 2 3
# the system has no solution since
# rank(A) < rank(B)

# example 2
A <- matrix(c(1,2,-1,-1,0,3,5,6,-9), nrow = 3, byrow=TRUE) 
A
b <- c(3,-2,13)

# rank of A and rank of the augmented matrix B
c(qr(A)$rank, qr(cbind(A,b))$rank)
# [1] 2 2
# the system has an infinite number of solutions since
# rank(A) = rank(B) < n = 3


#######
# end #
#######

