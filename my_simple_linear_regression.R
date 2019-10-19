# Simple Linear Regression

# Importing the dataset
dataset = read.csv('Salary_Data.csv')
# dataset = dataset[, 2:3]

# Splitting the dataset into the Training set and Test set
install.packages('caTools')
library(caTools)
set.seed(123)
split = sample.split(dataset$Salary, SplitRatio = 2/3)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

# Fitting simple linear regression to the training set
regressor = lm(formula = Salary ~ YearsExperience,
                data = training_set)