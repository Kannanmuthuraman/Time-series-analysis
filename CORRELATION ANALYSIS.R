R-CODE FOR CORRELATION ANALYSIS:
  >x<-scan( );
  >y<-scan( );
  >n<-length(x);
  >x2<-x*x;
  >y2<-y*y;
  >xy<-x*y;
  >sx=0;sy=0;sx2=0;sy2=0;sxy=0;
  >for(i in 1:n){
    + sx=sx+x[i]
    +sy=sy+y[i]
    +sx2<-sx2+x2[i]
    +sy2<-sy2+y2[i]
    +sxy<-sxy+xy[i]
  }
  >numerator<-(n*sxy)-(sx*sy);
  >denominator<-sqrt(((n*sx2)-(sx^2))*((n*sy2)-(sy^2)));
  >correlation<-numerator/denominator;
  >correlation;
  #alternative way
  >correlation<-cor(x,y);
  >correlation;
  > #rank Correlation
    > rank_correlation<-cor(x,y,method="spearman");
    > rank_correlation;
    #Scatter Diagram
    >plot(x,y,pch=17,xlab="Amount of Fertilizers", ylab="Yield", main="Scatter Diagram");
    