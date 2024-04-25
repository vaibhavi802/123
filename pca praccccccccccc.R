install.packages("corrr")
library(corrr)
install.packages("ggcorrplot")
library(ggcorrplot)
install.packages("FactoMineR")
library(FactoMineR)
install.packages("factoextra")
library(factoextra)

data=USArrests
colSums(is.na(data))

norma=scale(data)
head(norma)

corrmatrix=cor(norma)
corrmatrix
ggcorrplot(corrmatrix)


data.pca= princomp(corrmatrix)
summary(data.pca)

data.pca$loadings[,1:3]
fviz_eig(data.pca,addlabels = TRUE)
fviz_pca_var(data.pca)
