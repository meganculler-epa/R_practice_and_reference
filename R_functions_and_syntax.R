# ----------------------------------------------------------------
# Some characters:
# # - comments
# () - wraps function arguments and order of operations
# [] - indexing (grabbing values by location)
# {} - grouping code that should run together - used when programming functions

# ----------------------------------------------------------------
# Functions

# Help:
help("print") # Help on the print command
help(package="dplyr") # help on a package

# Print
print("hello world")

# Sequence
seq(1,10)

# Random normal numbers
somenumbers <- rnorm(100, mean=10, sd=2)

# Mean
mean(somenumbers)

# Sum
sum(somenumbers)

# installing packages
install.packages("ggplot2")

# Calculator:
1+1  #Add
10-3 #Subtract
3*2  #Multiply
3^3  #Exponents
10/5 #Divide
5%%2 #Modulus
5>2  #Greater than / Less than
5<=4 #Less than or equal
2==2 #Equal to
5!=6 #Not equal to

#Numeric assignment
x<-5
y<-x+1
# y = 6
z<-x+y
# z = 11

# Character assignment:
a <- "Larry"

# ----------------------------------------------------------------
# Working with objects

# List all objects in the current workspace
ls()
ls(pattern="a") # List all objects with "a"

#Remove an object
rm(x)

# Save all objects from this workspace
save.image("lesson2.RData")
# Save a subset of the objects
save(a,y, file="objects_ay.RData")

# ----------------------------------------------------------------
# Data frames

# Build a data frame
my_df <- data.frame(names = c("joe", "jenny", "bob", "sue"),
                    age = c(45, 27, 38, 51), 
                    knows_r = c(FALSE, TRUE, TRUE, FALSE))

my_df
my_df$age
my_df[2,] # Use indexing to gra a row

# ----------------------------------------------------------------
# Misc notes

# Open a library:
library(ggplot2)

# Use no quotes for an object that already exists, no quotes for everything else

# Use Views to find all R packages that are relevant to a task:
    # http://cran.r-project.org/web/views

# Custom google search tool: http://www.rseek.org/

# Use forward slashes for paths; if you use a backslash it needs to be a double backslash: \\\\

# Open a table in a separate window:
View(my_df)

# Tidy data:
# 1. Each column is a variable
# 2. Each row is an observation
# 3. Each cell has a single value
# 4. The data must be rectangular