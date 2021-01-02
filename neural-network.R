#This script will show how to explore the dataset and create a neural network model

#Set working directory
#Import file
diabetes<-read.csv(file="pima_diabetes.csv", head=TRUE, sep=",")

#View summary and ensure no missing values
head(diabetes)
summary(diabetes)

#Interesting histograms on variables
hist(diabetes$preg) #mostly not pregnant at all
hist(diabetes$skin) #mostly lower skin fold thickness
hist(diabetes$insu) #mostly lowest insulin
hist(diabetes$pedi) #mostly lower pedigree
hist(diabetes$age)  #sample size is mostly younger
hist(diabetes$class) #more don't have diabetes

#Install packages for neural network
install.packages("neuralnet")
library("neuralnet")

#Scale the first 6 variables
diabetes[1:8]<-scale(diabetes[1:8])

#Split data into training set and test set
set.seed(12345)
ind <- sample(2, nrow(diabetes), replace = TRUE, prob = c(0.7, 0.3))
train.data <- diabetes[ind == 1, ]
test.data <- diabetes[ind == 2, ]

#Build the neural network model
nn<-neuralnet(formula = class~., data = train.data, hidden=2, err.fct="ce", linear.output = FALSE)

#Display the available neural network properties
names(nn)

#Run the commands to display the network properties
nn$result.matrix
nn$net.result[[1]][1:10]

#Network visualization
plot(nn)

#Model evaluation
mypredict<-compute(nn, nn$covariate)$net.result
mypredict<-apply(mypredict, c(1), round)
mypredict[1:10]

#Confusion matrix for training set
table(mypredict, train.data$class, dnn =c("Predicted", "Actual"))
mean(mypredict==train.data$class)

#Confusion matrix for test set
testPred <- compute(nn, test.data[, 0:8])$net.result
testPred<-apply(testPred, c(1), round)
table(testPred, test.data$class, dnn =c("Predicted", "Actual"))
mean(testPred==test.data$class)

#End of script
