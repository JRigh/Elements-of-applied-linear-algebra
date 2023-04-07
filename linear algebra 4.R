#-----------------------------
# Elements of Linear algebra 4
#-----------------------------

# Diagonalization of a matrix

# Create matrix A 
A <- matrix(c(2,-1,-1,-1,2,-1,-1,-1,2), nrow = 3, byrow=TRUE)
A
#      [,1] [,2] [,3]
# [1,]    2   -1   -1
# [2,]   -1    2   -1
# [3,]   -1   -1    2

P <- eigen(A)$vectors
Lambda <- diag(eigen(A)$values)
round(solve(P) %*% A %*% P)
#      [,1] [,2] [,3]
# [1,]    3    0    0
# [2,]    0    3    0
# [3,]    0    0    0

#######
# end #
#######