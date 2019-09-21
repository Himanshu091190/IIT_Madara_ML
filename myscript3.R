# Get and print current working directory.
print(getwd())


MyData <- read.csv(file="C:/Users/lenovo/Documents/data.csv", header=TRUE, sep=",")
print(MyData)

print(is.data.frame(MyData))
print(ncol(MyData))
print(nrow(MyData))

# Get the max salary from data frame.
sal <- max(MyData$salary)
print(sal)

# Get the person detail having max salary.
retval <- subset(MyData, salary == max(salary))
print(retval)

# Get all people working in IT Department
retval <- subset( MyData, dept == "IT")
print(retval)

# Detail of people working in IT and Salary > 600
info <- subset(MyData, salary > 600 & dept == "IT")
print(info)

# People who joined on or after 2014
retval <- subset(MyData, as.Date(start_date) > as.Date("2014-01-01"))
print(retval)

# Writing to CSV  File
retval <- subset(MyData, as.Date(start_date) > as.Date("2014-01-01"))

# Write filtered data into a new file.
write.csv(retval,"output.csv")
newdata <- read.csv("output.csv")
print(newdata)

###################################################################   CHARTS AND GRAPHS ##################################################


#The basic syntax for creating a pie-chart using the R is ???

#pie(x, labels, radius, main, col, clockwise)

#Following is the description of the parameters used ???

#x is a vector containing the numeric values used in the pie chart.
#labels is used to give description to the slices.
#radius indicates the radius of the circle of the pie chart.(value between ???1 and +1).
#main indicates the title of the chart.
#col indicates the color palette.
#clockwise is a logical value indicating if the slices are drawn clockwise or anti clockwise.


###################################################################

# Create data for the graph.
x <- c(21, 62, 10, 53)
labels <- c("London", "New York", "Singapore", "Mumbai")

# Give the chart file a name.
png(file = "city.jpg")

# Plot the chart.
pie(x,labels)

# Save the file.
dev.off()

###############################

# Create data for the graph.
x <- c(21, 62, 10, 53)
labels <- c("London", "New York", "Singapore", "Mumbai")

# Give the chart file a name.
png(file = "city_title_colours.jpg")

# Plot the chart with title and rainbow color pallet.
pie(x, labels, main = "City pie chart", col = rainbow(length(x)))

# Save the file.
dev.off()

###############################

# Create data for the graph.
x <-  c(21, 62, 10,53)
labels <-  c("London","New York","Singapore","Mumbai")

piepercent<- round(100*x/sum(x), 1)

# Give the chart file a name.
png(file = "city_percentage_legends.jpg")

# Plot the chart.
pie(x, labels = piepercent, main = "City pie chart",col = rainbow(length(x)))
legend("topright", c("London","New York","Singapore","Mumbai"), cex = 0.8,
       fill = rainbow(length(x)))

# Save the file.
dev.off()


#################################

# Get the library.
library(plotrix)

# Create data for the graph.
x <-  c(21, 62, 10,53)
lbl <-  c("London","New York","Singapore","Mumbai")

# Give the chart file a name.
png(file = "3d_pie_chart.jpg")

# Plot the chart.
pie3D(x,labels = lbl,explode = 0.1, main = "Pie Chart of Countries ")

# Save the file.
dev.off()