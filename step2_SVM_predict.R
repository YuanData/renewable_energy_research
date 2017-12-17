SolarPower=read.csv("D:/R/2015from01to12.csv",header=TRUE)
library(e1071)
model<-svm(Per ~., data=SolarPower)
svr.pred=predict(model,SolarPower)
SolarPowerPred<-cbind(SolarPower,svr.pred)
write.csv(SolarPowerPred,file="D:/R/2015pred.csv",row.names = T)


RMSE <- sqrt(mean((SolarPowerPred$Per-svr.pred)^2))
