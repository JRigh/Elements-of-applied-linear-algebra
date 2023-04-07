#-----------------------------
# Elements of Linear algebra 3
#-----------------------------

# determinant of a square matrix

# create a square matrix A of size n = 2
A <- matrix(c(1,2,3,4), nrow = 2, byrow=TRUE)
A
#      [,1] [,2]
# [1,]    1    2
# [2,]    3    4

det(A)
# [1] -2

# create a square matrix A of size n = 3
A <- matrix(c(-2,2,-3,-1,1,3,2,0,-1), nrow = 3, byrow=TRUE)
A
#      [,1] [,2] [,3]
# [1,]   -2    2   -3
# [2,]   -1    1    3
# [3,]    2    0   -1

det(A)
# [1] 18

# create a square matrix A of size n = 4
A2 <- matrix(c(2,0,3,1,-1,-1,-1,1,0,2,0,3,-3,-3,-2,9), nrow = 4, byrow=TRUE)
A2
#      [,1] [,2] [,3] [,4]
# [1,]    2    0    3    1
# [2,]   -1   -1   -1    1
# [3,]    0    2    0    3
# [4,]   -3   -3   -2    9
det(A)
# [1] 0
# matrix A2 is not invertible because det(A2) = 0.

# Inverse of a matrix
# create a square matrix A of size n = 4
A <- matrix(c(1,2,-1,-1,-1,3,0,3,7), nrow = 3, byrow=TRUE)
A
#      [,1] [,2] [,3]
# [1,]    1    2   -1
# [2,]   -1   -1    3
# [3,]    0    3    7

solve(A) # returns A inverse
#      [,1] [,2] [,3]
# [1,]  -16  -17    5
# [2,]    7    7   -2
# [3,]   -3   -3    1

# check
round(A %*% solve(A))
#       [,1] [,2] [,3]
# [1,]    1    0    0
# [2,]    0    1    0
# [3,]    0    0    1


#######
# end #
#######