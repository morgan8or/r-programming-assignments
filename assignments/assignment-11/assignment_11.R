# Code with error:
tukey_multiple <- function(x) {
  outliers <- array(TRUE, dim = dim(x))
  for (j in 1:ncol(x)) {
    outliers[, j] <- outliers[, j] && tukey.outlier(x[, j])
  }
  outlier.vec <- vector("logical", length = nrow(x))
  for (i in 1:nrow(x)) {
    outlier.vec[i] <- all(outliers[i, ])
  }
  return(outlier.vec)
}

# 1. Reproduce the Error
set.seed(123)
test_mat <- matrix(rnorm(50), nrow = 10)
tukey_multiple(test_mat)
#Error in outliers[, j] && tukey.outlier(x[, j]) : 
#  'length = 10' in coercion to 'logical(1)'

# 2. Diagnose the Bug
#In R, && only checks the first element of a logical vector, 
#while & compares all elements individually. Replacing && with & 
#makes sure the operation works element by element.

# 3. and 4. Fix and validate fix
# Corrected inside the loop:
outliers[, j] <- outliers[, j] & tukey.outlier(x[, j])
corrected_tukey <- function(x) {
  outliers <- array(TRUE, dim = dim(x))
  for (j in seq_len(ncol(x))) {
    outliers[, j] <- outliers[, j] & tukey.outlier(x[, j])
  }
  outlier.vec <- logical(nrow(x))
  for (i in seq_len(nrow(x))) {
    outlier.vec[i] <- all(outliers[i, ])
  }
  outlier.vec
}

corrected_tukey(test_mat)

# [1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE

# blog link: morganlefey.com/assignment11=lis4370
