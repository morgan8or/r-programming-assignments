# 1. Define matrices
A <- matrix(c(2, 0, 1, 3), ncol = 2)
B <- matrix(c(5, 2, 4, -1), ncol = 2)

# compute addition and subtraction
A+B
#     [,1] [,2]
# [1,]    7    5
# [2,]    2    2

A-B
#     [,1] [,2]
# [1,]   -3   -3
# [2,]   -2    4

# 2. Create a diagonal matrix
D <- diag(c(4, 1, 2, 3))
D
#     [,1] [,2] [,3] [,4]
# [1,]    4    0    0    0
# [2,]    0    1    0    0
# [3,]    0    0    2    0
# [4,]    0    0    0    3

# 3. Construct a Custom 5 × 5 Matrix
C <- cbind(
    c(3, 2, 2, 2, 2),
    c(1, 3, 0, 0, 0),
    c(1, 0, 3, 0, 0),
    c(1, 0, 0, 3, 0),
    c(1, 0, 0, 0, 3)
  )
C
#     [,1] [,2] [,3] [,4] [,5]
# [1,]    3    1    1    1    1
# [2,]    2    3    0    0    0
# [3,]    2    0    3    0    0
# [4,]    2    0    0    3    0
# [5,]    2    0    0    0    3

# blog link: https://morganlefey.com/assignment6-lis4370/
