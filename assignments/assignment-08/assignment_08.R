# 1. Import Assignment Data
student6 <- read.table(file.choose(), header = TRUE, stringsAsFactors = FALSE)

# Separate rows
library(tidyr)
student6 <- separate(
  student6,
  col = Name.Age.Sex.Grade,
  into = c("Name", "Age", "Sex", "Grade"),
  sep = ","
)
# Convert Age and Grade to numeric
student6$Age <- as.numeric(student6$Age)
student6$Grade <- as.numeric(student6$Grade)

#Load plyr and compute the mean of Grade by Sex
library(plyr)
y <- ddply(student6, "Sex", transform,
           Grade.Average = mean(Grade, na.rm = TRUE))

y
#        Name Age    Sex Grade Grade.Average
#1      Lauri  21 Female    90       86.9375
#2     Leonie  21 Female    91       86.9375
#3    Sherlyn  22 Female    85       86.9375
#4    Mikaela  20 Female    69       86.9375
#5       Aiko  24 Female    97       86.9375
#6   Tiffaney  21 Female    78       86.9375
#7     Corina  23 Female    81       86.9375
#8  Petronila  23 Female    98       86.9375
#9     Alecia  20 Female    87       86.9375
#10   Shemika  23 Female    97       86.9375
#11    Fallon  22 Female    90       86.9375
#12   Deloris  21 Female    67       86.9375
#13    Randee  23 Female    91       86.9375
#14     Eboni  20 Female    84       86.9375
#15   Delfina  19 Female    93       86.9375
#16 Ernestina  19 Female    93       86.9375
#17      Raul  25   Male    80       80.2500
#18    Booker  18   Male    83       80.2500
#19   Raphael  23   Male    91       80.2500
#20      Milo  19   Male    67       80.2500
 

# Write the grouped means to a text file:
write.table(y,"Sorted_Average",sep=",")

# Filter Names Containing “i"
i_students <- subset(
  student6,
  grepl("i", Name, ignore.case = TRUE)
)
# Extract just the names and write them to a CSV
write.csv(
  i_students$Name,
  file      = "i_students.csv",
  row.names = FALSE,
  quote     = FALSE
)
# Save the full filtered data frame to a CSV
write.csv(
  i_students,
  file      = "i_students_full.csv",
  row.names = FALSE
)

# blog link: morganlefey.com/assignment8-lis4370
