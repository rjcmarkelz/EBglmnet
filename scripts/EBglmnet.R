setwd("/Users/Cody_2/git.repos/EBglmnet/data/")
library(EBglmnet)
data(BASIS)
head(BASIS)
data(y)
y
n = 50
k = 100
BASIS = BASIS[1:n, 1:k]
y = y[1:n]
CV = EBlassoNEG.GaussianCV(BASIS, y, nFolds = 3, Epis = "no")
output = EBlassoNEG.Gaussian(BASIS, y, a_gamma = 0.1, b_gamma = 0.1, Epis = "yes")
output