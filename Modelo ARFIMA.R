setwd("C:/Users/TOSHIBA/Desktop")
library(readxl)
library(ggplot2)
library(arfima)
library(fracdiff)
library(forecast)

arfima(Nile, order=c(1,0,0)) #yields AR(1) coefficient of 0.5063
kk=1:20;
plot.ts(Nile)
out=arfima(as.numeric(Nile))
summary(out)
auto.arima(Nile)
NileAR1=0.5063^kk; plot.ts(NileAR1)
par(mfrow=c(2,1))
k<-1 −2*a*cos λ + θ2
acf(Nile, main="Autocorrelationes para el flujo del Río Nilo") 
plot.ts(NileAR1, main="Autocorrelations for AR(1) model for Nile river
        flows") 
library(fracdiff)
fdGPH(Nile, bandw.exp = 0.5)#gives the GPH estimate d= 0.3896247
fr1=fracdiff(Nile)
summary(fr1)#gives the ML estimate d=0.3639127 
confint(fr1) #prints 95% confidence interval (0.3638995 0.3639258)

library(tseries)
data(USeconomic)
summary(USeconomic)
plot.ts(USeconomic)
dgnp=diff(log(GNP),1)
69
fracdiff(log(GNP))  # the d is too close to 0.5 an unstable level
dgnp=diff(log(GNP),1)#compute first difference
fracdiff(dgnp)# this d =0.2233329 is more plausible






data(tmpyr)
View(tmpyr)
plot(tmpyr)
fit <- arfima(tmpyr, order = c(0, 1, 0))
fit
summary(fit)

set.seed(7)
ts4 <- fracdiff.sim(500, ar = 0, ma = 0, d = 0.1)
length(ts4)
mGPH <- fdGPH(ts4$series)
modFD <- fracdiff( ts4$series, nar = length(ts4$ar), nma = length(ts4$ma))
## -> warning (singular Hessian) %% FIXME ???
coef(modFD) # the estimated parameters
vcov(modFD)
smFD <- summary(modFD)
smFD
coef(smFD) # gives the whole table
AIC(modFD) # AIC works because of the logLik() method



memory.long <- fracdiff.sim(500, d = 0.1)

mGPH <- fdGPH(memory.long$series)
r <- diffseries(memory.long$series, d = mGPH$d)
#acf(r) # shouldn
t show structure - ideally



IPC<-read_excel("Serie IPC Caracas.xlsx",sheet=2,na="")
View(IPC)
str(IPC)
fecha<-IPC$Fecha[1:250]
IPC$Fecha

serie<-read_excel("Libro.xlsx",sheet=1,na="",col_names = F)
fecha<-IPC$Fecha[1:250]
d<-data.frame(fecha,serie)
View(d)
colnames(d)<-c('Fecha',"Datos")
serie<-IPC[[2]]
serie<-serie[1:(length(serie)-1)]
plot.ts(d$Datos)
correla<-acf(d$Datos,lag.max=60)

#************************************************
 
#GRAFICO DE LA SERIE
gra<-ggplot(data=d,aes(x=Fecha,y=Datos))+geom_line(colour="#006699")
gra
#clour=Spectral
serie<-Nile
#AUTOCORRELOGRAMA
conf.level <- 0.95
ciline <- qnorm((1 - conf.level)/2)/sqrt(length(serie))
bacf <- acf(serie, lag.max=100, plot = FALSE, na.action=na.pass)
bacfdf <- with(bacf, data.frame(lag, acf))

correlacion <- ggplot(data=bacfdf, mapping=aes(x=lag, y=acf)) + 
  geom_bar(stat = "identity", position = "dodge",fill="#006699",alpha=0.7)+
  geom_point(size=3)
correlacion

#**********************paquete de modelacion*********************
test_uni<-adf.test(serie,alternative=c("stationary","explosive"),k=2)
test_uni


estim<-arfima(serie)
summary(estim)
str(estim)
estim$period
coef(estim)

plot(as.numeric(estim$residuals))

pred<-forecast(serie,12)
str(pred)
plot(pred)

resid<-pred$residuals
plot(resid)


#************************FUNCION DE ESTIMADOR GPH *****************************
a<-as.integer(length(serie)/2)
w<-(2*pi)*(1:a) #tomar bien las dimensiones j=1,2,...??
covar<-as.numeric(correla$acf)

Iz<-function(w){ #Periodograma ~ funcion de densidad Espectral  .......gperiodograma(serie)
  I<-numeric(51)
  
  for(j in 1:51){
    sumas_j<-sum(covar[2:51]*cos((1:50)*w[j]))
    I[j]<-1/(2*pi)*(covar[1]+2*sumas_j)
  }
  return(I)
}

Y<-log(Iz(w[1:51]))
X<-log(1/(4*(sin(w[1:51]/2))^2))
datos<-data.frame(X,Y)
#Regresion para hallar d

regresion<-lm(Y~X,data=datos)

summary(regresion)
#Hallar la estmacion de la constane
regresion$coefficients

#peridiograma
library(descomponer)
gperiodograma(serie)






library(fracdiff)
library(forecast)
fracdiff(serie)
w<-diffseries(serie,d=0.049437)
d<-data.frame(d,w)
gra<-ggplot(data=d,aes(x=Fecha,y=w))+geom_line(colour="#006699")
gra
plot(w)
a<-arfima(d$Datos)
a

x <- fracdiff.sim( 100, ma=-.1, d=.3)$series
fit <- arfima(x)
plot(forecast(fit,h=30))
