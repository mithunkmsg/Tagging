#' @get /
search <- function(question=" "){
  keyword<-read.csv("key.csv")
  
  keyword$KEYWORD<-as.character(keyword$KEYWORD)
  
  tmn<-data.frame()
  tmp<-data.frame()
  
  for(i in 1:3362){
    value<-grepl(tolower(keyword$KEYWORD[i]),tolower(question))
    if(value=="TRUE"){
      
      tmn<-cbind(ID=keyword$ID[i])
      tmp<-rbind(tmp,tmn)
    
    }
  }
   print(tmp)
}