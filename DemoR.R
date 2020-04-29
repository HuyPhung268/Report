# R - Data type

# Logical
v = TRUE
class(v)

# Numeric
v1 = 12.5
class(v1)

# Integer
v2 = 5L
class(v2)

# Complex
v3 = 4 + 7i
class(v3)

# Character
v4 = 'Bioinfo'
class(v4)

# Create vector
color = c('red','green','yellow','orange')
class(color)
number = c(3,4,5)
class(number)
a = c(1,'xyz',3)

# LIST
list = list('abc',11.5,3L,c(1,2,3))
list[[1]]
list[[4]]
list[[-1]]

# Matrix
z = matrix(c(1,2,3,4,5,6), nrow = 2, ncol = 3, byrow = TRUE, dimnames = list(c('a1','a2'),c('b1','b2','b3')))
z[1,2]
z[1,1:2]

z1 = matrix(c(5,6,7,8,9,10), nrow = 2, ncol = 3 , byrow = TRUE)
z
z1
z2 = z + z1
z2

z3 = matrix(c(1,2,3,4,5,6,7,8,9), nrow = 3, ncol = 3 , byrow = TRUE)
z3
z4 = z3 * z1
z4


# Array
m = c(1,2,3,4,5,6,7,8,9)
cnames = c('C1','C2','C3')
rnames = c('R1','R2','R3')
mnames = c('Matrix1','Matrix 2')
arr = array(m,dim = c(3,3,2),dimnames = list(cnames,rnames,mnames))
arr


# Factor
colors = c('red','green','blue','yellow','green','blue','green','pink')
factor_colors = factor(colors)
factor_colors
nlevels(factor_colors)


# Data Frame
BMI = data.frame(gender = c('Male','Male','Male','Female'),
                 height = c(150,171,168,164),
                 weight = c(81,93,78,56),
                 age = c(42,38,26,23),
                 start_date = as.Date(c('2019-03-25','2019-06-27','2019-10-5','2019-12-14'))
                 )
BMI
# Sumary of Data
summary(BMI)
# Extract Data
BMI[c(2:4),c(1:4)]
str(BMI)
result = data.frame(BMI$gender,BMI$height)
result
# Expand Data
BMI$name = c('A','B','C','D') # add column
BMI

# Add rows
# Create the second data frame
BMI_new = data.frame(gender = c('Male','Female','Male'),
                     height = c(180,166,178),
                     weight = c(55,53,67),
                     age = c(19,45,34),
                     start_date = as.Date(c('2019-02-21','2019-05-27','2019-07-02')),
                     name = c('E','F','G')
                     )
# Bind the 2 data frames
BMI_final = rbind(BMI,BMI_new)
BMI_final















