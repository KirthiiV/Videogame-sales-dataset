summary(vgsales)
names(vgsales)
histogram(~Rank, data=vgsales, breaks = 50)
histogram(~NA_Sales, data=vgsales, breaks = 50)
histogram(~EU_Sales, data=vgsales, breaks = 20)
histogram(~JP_Sales, data=vgsales, breaks = 30)
histogram(~Other_Sales, data=vgsales, breaks = 20)
histogram(~Global_Sales, data=vgsales, breaks = 20)
#Subset 
histogram(~NA_Sales|Genre, data=vgsales)
histogram(~EU_Sales|Genre, data=vgsales)
histogram(~JP_Sales|Genre, data=vgsales)
histogram(~Other_Sales|Genre, data=vgsales)
histogram(~Global_Sales|Genre, data=vgsales)
#Boxplot
library(ggplot2)
input<-vgsales[,c('NA_Sales','Year')]
print(head(input))
#Plot the chart
bwplot(~JP_Sales,data=vgsales)
boxplot(NA_Sales ~ Year, data=vgsales, xlab = "year of the game release", ylab = "North America sales(millions)", main = "Sales data")
input<-vgsales[,c('EU_Sales','Year')]
print(head(input))
boxplot(EU_Sales ~ Year, data=vgsales, xlab = "Year of the game release", ylab = "European sales(millions)", main="Sales due to their year")
input<-vgsales[,c('JP_Sales','Year')]
print(head(input))
boxplot(JP_Sales ~ Year, data=vgsales, xlab = "Year of the game release", ylab = "Japan sales(millions)", main="Sales data")

input<-vgsales[,c('Other_Sales','Year')]
print(head(input))
boxplot(Other_Sales ~ Year, data=vgsales, xlab = "Year of the game release", ylab = "Other sales(millions)", main="Sales")
input<-vgsales[,c('Global_Sales','Year')]
print(head(input))
boxplot(Global_Sales ~ Year, data=vgsales, xlab = "Year of the game release", ylab = "Worldwide sales(millions)", main="Sales data")
#Scatterplot
input<-vgsales[,c('NA_Sales','EU_Sales')]
print(head(input))
plot(x= input$NA_Sales, y=input$EU_Sales,
     xlab = "North America sales",
     ylab = "European sales",
     xlim = c(10,42),
     ylim = c(1,29.5),
     main = "North America vs European sales"
)
input<-vgsales[,c('EU_Sales','JP_Sales')]
print(head(input))
plot(x= input$EU_Sales, y=input$JP_Sales,
     xlab = "European sales",
     ylab = "Japan sales",
     xlim = c(2,29.5),
     ylim = c(2.5,10.5),
     main = "European vs Japan sales"
)
input<-vgsales[,c('JP_Sales','Other_Sales')]
print(head(input))
plot(x= input$JP_Sales, y=input$Other_Sales,
     xlab = "Japan sales",
     ylab = "Other country sales",
     xlim = c(3,10.5),
     ylim = c(0.5,9),
     main = "Japan vs Other country sales"
)
input<-vgsales[,c('Other_Sales','Global_Sales')]
print(head(input))
plot(x= input$Other_Sales, y=input$Global_Sales,
     xlab = "Other sales",
     ylab = " Global sales",
     xlim = c(0.5,8.5),
     ylim = c(30,82.5),
     main = "Other sales vs Worldwide sales"
)

