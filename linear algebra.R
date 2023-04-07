#-----------------------------
# Elements of Linear algebra 1
#-----------------------------

# create matrix A and vector x
A = matrix(c(1,0,-1,0,0,0,2,0,-2,0,0,1,-1,0,-1,0,4,-4,-1,-2),
           nrow = 4, byrow = TRUE)
A
#       [,1] [,2] [,3] [,4] [,5]
# [1,]    1    0   -1    0    0
# [2,]    0    2    0   -2    0
# [3,]    0    1   -1    0   -1
# [4,]    0    4   -4   -1   -2

x = c(1,1,1,1,1)
# [1] 1 1 1 1 1
# product matrix A by vector x
A %*% x
#      [,1]
# [1,]    0
# [2,]    0
# [3,]   -1
# [4,]   -3

# solve a linear system of equations (for non square matrices)

A = matrix(c(3,-2,1,1,1,-1), nrow = 2, byrow = TRUE)
A
#      [,1] [,2] [,3]
# [1,]    3   -2    1
# [2,]    1    1   -1

b = matrix(c(1,3), nrow = 2, byrow = TRUE)
b
#      [,1]
# [1,]    1
# [2,]    3

# Solve the linear system Ax = b
sol <- svd(A)$v %*% diag(1/(svd(A)$d)) %*% t(svd(A)$u) %*% b
sol
#            [,1]
# [1,]  1.2142857
# [2,]  0.8571429
# [3,] -0.9285714

# check
A[1,1] * sol[1] + A[1,2] * sol[2] + A[1,3] * sol[3] 
# [1] 1
A[2,1] * sol[1] + A[2,2] * sol[2] + A[2,3] * sol[3] 
# [1] 3

# solve a linear system of equations (square matrices)
A2 = matrix(c(3,-2,1,1), nrow = 2, byrow = TRUE)
A2
#      [,1] [,2]
# [1,]    3   -2
# [2,]    1    1
b = matrix(c(1,3), nrow = 2, byrow = TRUE)
b
#      [,1]
# [1,]    1
# [2,]    3

# Solve the linear system A2x = b
sol <- solve(A2,b)
sol
#      [,1]
# [1,]  1.4
# [2,]  1.6

# check
A2[1,1] * sol[1] + A2[1,2] * sol[2]
# [1] 1
A2[2,1] * sol[1] + A2[2,2] * sol[2]
# [1] 3


#######
# end #
#######