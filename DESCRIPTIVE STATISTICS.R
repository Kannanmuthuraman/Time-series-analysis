#Descriptive Statistics - Raw Data
x<-c(
6019.429,
5990.61,
5729.97,
6034.88,
4522.642,
3988.023,
3961.49,
4024.231,
3805.516,
4042.994,
4962.123,
5247.977,
5560.217,
4180.79,
3571.703,
3000.729,
2467.868,
2127.776,
1575.859,
1336.182,
1223.306,
1021.743,
858.5866,
928.2176)
n<-length(x)

#To Find Mean
mean=sum(x)/length(x)
mean

#To Find Median
median=median(x)
median

#To Find Mode
xt=table(x)
xt
mode=which(xt==max(xt))           # To find a most common number in given observation
mode

#To Find Geometric Mean
logg=log(x,10)                                # To find a LOG value of given data
logg
total=sum(logg)
total
m=sum(logg)/n
m
gm=10^m                               # To find a ANTILOG for calculated value
gm
#To Find Harmonic Mean
h=sum(1/x)
hm=n/h
hm
#R Program for Measures of Dispersion - Raw Data;
summary(x);
#maximum=l,minimum=s,median=m,mean=x,first quartile=q1,third quartile=q3;
l=858.6;s=1989.8;q1=397.8;m=3591;q3=5033.6;mean=6034.9;
range<-l-s;
quartile_deviation<-(q3-q1)/2;
mean_deviation<-sum(abs(x-mean))/length(x);
standard_deviation<-sd(x);
variance<-var(x);
covariance<-(standard_deviation/mean)*100;
range;
mean_deviation;
quartile_deviation;
standard_deviation;
variance;
covariance; 
#karl pearson’s  coefficient skewness
skp<-3*(mean-median)/standard_deviation
skp
#bowley’s coefficient of skewnes
#minimum=s,maximum=l,mean=me,median=m,first quartile=q1,third quartile=q3;
l=858.6;s=1989.8;q1=397.8;m=3591;q3=5033.6;mean=6034.9;
skb<-(q3+q1-(2*median))/(q3-q1);
skb;
