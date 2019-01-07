
z1=-1.9432
z2=0.002377376
x=seq(-5,5,length=300)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type="l",lwd=1,col="black",main='Test sur le taux de croissance européen.', yaxt="n", xlab="",ylab="")
x=seq(-3,z1,length=200)
y=dnorm(x,mean=0,sd=1)
polygon(c(-5,x,-1.94),c(0,y,0),col="gray")
arrows(-5.2, 0.1, z1, 0.1, lty=1, code=3, col="black")
arrows(5.2, 0.1, z1, 0.1, lty=1, code=3, col="gray")
text(-2.2,0.015,"5%", col="red")
abline(v=z1, lty="dotted",col="red", lwd=2)
text(z1-.5,0.2, srt=90, adj = 0, labels = z1, cex=1, col="red")
text(-4,0.125,  adj = 0, labels =expression(paste("Rejet ", H[0])), cex=1, col="black")
text(2.0,0.125, adj = 0, labels = expression(paste("Acceptation ", H[0])), cex=1, col="gray")
points(-4.2,-0.005, col="blue", pch=24, bg="green", cex=2.5)
