R-CODE FOR TESTING OF DIFFERENCE OF MEAN:
  >x<-scan( ); 
  >y<-scan( ); 
  >null<-"There is no significance difference betweensample mean and population mean";
  >alt<-"There is significance difference betweensample mean and population mean";
  >los<-0.05;
  >t.test(x,y,alt="less",var.equal=T); 
  >#From the output find the p-value; 
    >pvalue<-___; 
    >if(pvalue<los)alt else null; 
    
    R-CODE FOR ONE WAY ANOVA TEST:
      
      >#R Program for One-Way ANOVA;
      > A<-scan( );
      > B<-scan();
      > d<-stack(list("A"=A,"B"=B));
      > names(d);
      >oneway.test(values~ind,data=d,var.equal = T);
      > #From the output find the p-value;
        >pvalue<-______;
        > if(pvalue<0.05)"Reject the Null Hypothesis"else"Accept the Null hypothesis";
        