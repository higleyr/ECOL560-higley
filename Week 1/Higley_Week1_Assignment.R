# Now it is time to create your own data frame using the tools we have learned this week.
# First, resave this script as: your last name_Week1_Assignment
  # e.g. mine would be Wilson_Week1_Assignemnt


# Create 3 numeric vectors and 2 character vectors that are each 15 values in length with the following structures:
  # One character vector with all unique values
  # One character vector with exactly 3 unique values
  # One numeric vector with all unique values
  # One numeric vector with some repeated values (number of your choosing)
  # One numeric vector with some decimal values (of your choosing)

# Bind the vectors into a single data frame, rename the columns, and make the character vector with unique values the row names.

# Remove the character vector with unique values from the data frame.

# Add 1 row with unique numeric values to the data frame.

# Export the data frame as a .csv file 

# Generate summary statistics of your data frame and copy them as text into your script under a new section heading.

# Push your script and your .csv file to GitHub in a new "Week1" folder.





# Assignment Start#

a <- c('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o')
b <- c('a','b','c','d','d','d','d','d','d','d','d','d','d','d','d') #too many unique values
c <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,15) 
d <- c(1,2,3,4,5,6,7,7,8,9,10,11,11,12,13)
e <- c(1,1.5,2,2.5,3,3.5,4,4.5,5,5.5,6,6.5,7,7.5,8)

data <- cbind(a,b,c,d,e)
data

df <- as.data.frame(data)
df

colnames(df) <- c('Rows','Broken Alphabet','Counting','cant count', 'decimal fun')
df

row.names(df) <- df$Rows
df

df.a <- df[,-1]
df.a

binary.solo <- c(16,17,18,19)

new.df <- rbind(df.a, binary.solo)
new.df


###Where are the summary statistics or the code to write to a CSV? You're missing the last part of the assigment.

