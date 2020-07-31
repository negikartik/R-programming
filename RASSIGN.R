
# Question 1 

# dataframe 1 
rollno=c(1,2,3,4)
name=c("kartik","shashank","saksham","geetansh")
gpa=c(9.5,9.1,8.6,8.7)
df1=data.frame(rollno,name,gpa)
print(df1)

# dataframe 2 
rollno=c(2,3,4,5)
section=c("2y","2y","3x","3x")
hobby=c("music","music", "music","drawing")
df2=data.frame(rollno,section,hobby)
print(df2)

# question 2

# joining the dataframes 

# applying outer join

library(dplyr)
df3=full_join(df1,df2,by="rollno")
print(df3)


# question 3

# adding new column using cbind
height=c(181,183,175,179,165)
df3=cbind(df3,height)
print(df3)


# question 4

# adding new row using rbind

df3=rbind(df3,data.frame(rollno=9,name="radha",gpa=9.8,section="2y",hobby="drawing",height=172))
print(df3)

# question 5

df4=subset(df3,section=="2y")
print(df4)


# question 6

#editing values of 3rd row


df3[[1]][3]=10
df3[[2]][3]="kanika"
df3[[3]][3]=7.3
df3[[4]][3]="2y"
df3[[5]][3]="drawing"
df3[[6]][3]=171

print(df3)


# editing values of 2nd column

df3[[2]][1]="shashank"
df3[[2]][2]="chandan"
df3[[2]][3]="nipun"
df3[[2]][4]="indu"
df3[[2]][5]="kartik"
df3[[2]][6]="anita"

print(df3)

# question 7

# deleting last row
df5=df3[-6,]
print(df5)


# question 8

# first performing melt operation

library(reshape2)
df6=melt(df5,id.vars=c("name","hobby"),measure.vars=c("section","rollno","gpa","height"))
print(df6)

# now performing cast operation

df7=dcast(df6,variable+hobby~name,value.var="value")
print(df7)

