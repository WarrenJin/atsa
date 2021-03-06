library(MARSS)
fit <- MARSS(log(wilddogs[,2]))
kf.fit <- MARSSkfss(fit)
par(mfrow=c(3,1),mar=c(2,1,1,1))
plot(wilddogs)
lines(wilddogs[,1],exp(kf.fit$xtT[1,]))
title("Smoothed xt given all data")
plot(wilddogs)
lines(wilddogs[,1],exp(kf.fit$xtt1[1,]))
title("Predicted xt given y(1) to y(t-1)")
plot(wilddogs)
lines(wilddogs[,1],exp(kf.fit$xtt[1,]))
title("Predicted xt given  y(1) to y(t)")
