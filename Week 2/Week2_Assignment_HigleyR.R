# With the data frame you created last week you will:

a <- c('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p')
b <- c('a','a','a','a','a','b','b','b','b','b','c','c','c','c','c','c') 
c <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,15,14,15)
d <- c(1,2,3,4,5,6,7,7,8,9,10,11,11,12,13,14)
e <- c(1,1.5,2,2.5,3,3.5,4,4.5,5,5.5,6,6.5,7,7.5,8,8.5)

data <- cbind(a,b,c,d,e)
data

df <- as.data.frame(data)
df

df$c <- as.numeric(as.character(df$c))
df$d <- as.numeric(as.character(df$d))
df$e <- as.numeric(as.character(df$e))

colnames(df) <- c('Rows','Broken Alphabet','Counting','cant count', 'decimal fun')
df

row.names(df) <- df$Rows
df

df.a <- df[,-1]
df.a

# Create a barplot for one numeric column, grouped by the character vector with 3 unique values
  # Add error bars with mean and standard deviation to the plot
  # Change the x and y labels and add a title
  # Export the plot as a PDF that is 4 inches wide and 7 inches tall.

df.mean <- aggregate(df.a$Counting~df.a$`Broken Alphabet`, FUN = 'mean')
df.mean

colnames(df.mean) <- c("Factor","Mean")
df.mean

barplot(df.mean$Mean, names.arg = df.mean$Factor, xlab = 'categories', ylab = 'wow I can count', main = 'all bars no music')

setwd("C:/GitHub/ECOL560-higley/Week 2")
pdf(file = "week2 bars.pdf", width = 4, height = 7)
b.plot <- barplot(df.mean$Mean, names.arg = df.mean$Factor, xlab = 'categories', ylab = 'wow I can count', main = 'all bars no music')

# Create a scatter plot between two of your numeric columns.
  # Change the point shape and color to something NOT used in the example.
  # Change the x and y labels and add a title
  # Export the plot as a JPEG by using the "Export" button in the plotting pan

plot(df.a$`cant count`~df.a$`decimal fun`, xlab = "can't count", ylab = "yay decimals", main = "crying", pch = 14, col = "tomato")

# Upload both plots with the script used to create them to GitHub.
  # Follow the same file naming format as last week for the script.
  # Name plots as Lastname_barplot or Lastname_scatterplot. Save them to your "plots" folder.






