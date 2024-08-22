install.packages(ggplot2)
install.packages(data.table)
installed.packages(ggplot2)

library(ggplot2)
library(data.table)
methylated_c=fread("R_WORKSHOP.csv",header=T,sep=",")
View(methylated_c)
summary(methylated_c)


str(methylated_c)
class(methylated_c)

#setting up data
graph=ggplot(methylated_c,aes(x=Chromosome,y=Count_in_millions))+
labs(x="Chromosome number",y="cytosine_counts_in_millions",title="Methylatable cytosine 
distribution in A.thaliana")
print(graph)

#geom
graph1=graph+geom_col()
print(graph1)

graph2=graph1+aes(fill=Context)
print(graph2)

#Thr
graph3=graph+geom_col(position="dodge")+aes(fill=Context)
print(graph3)


#Facet
graph4=graph3+facet_grid(~Context)
print(graph4)

data("iris")
iris
View(iris)
