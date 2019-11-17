# Data Processing

# Importing the dataset
dataset = read.csv('Data.csv')
# dataset = dataset[, 2:3]

# Splitting the dataset into the Training set and Test set
install.packages('caTools')
library(caTools)
set.seed(123)
split = sample.split(dataset$Purchased, SplitRatio = 0.8)

# Feature Scaling
# training_set = subset(dataset, split == TRUE)
# test_set = subset(dataset, split == FALSE)