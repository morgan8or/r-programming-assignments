# Load dataset and inspect
data("mtcars")
head(mtcars)
str(mtcars)
print(mtcars)
summary(mtcars)

# Explore S3 vs. S4
s3_obj <- list(name = "Myself", age = 29, GPA = 3.5)
class(s3_obj) <- "student_s3"

setClass("student_s4",
         slots = c(name = "character", age = "numeric", GPA = "numeric"))
s4_obj <- new("student_s4", name = "Myself", age = 29, GPA = 3.5)

# Generic function dispatch 
print(s3_obj)
summary(s3_obj)

print(s4_obj)
summary(s4_obj)

#blog link: morganlefey.com/assignment7-lis4370
