# (1) Approximately how many hours ahead of Sunbury was the peak flow in Lewisburg during the 2011 flood? (2 pt)
  # approximately 12 hours ahead


# (2) Give one reason why information on the time between peak flow events up- and downstream could be valuable? (4 pts)
        #Saftey of humans - accurately predicting peak flood times allows for people to safely evacuate or make preparations.

# Package scavenger hunt! (12 pts each)

## (3) Using Google and ONLY packages from GitHub or CRAN:
    # Find a package that contains at least one function specifically designed to measure genetic drift.
library(learnPopGen)
    # Copy-paste into your script - and run - an example from the reference manual for a function within this package related to a measure of genetic drift. 
        # Depending on the function, either upload a plot of the result or use print() and copy/paste the console output into your script.
genetic.drift()
object<-genetic.drift(p0=0.7,show="heterozygosity")
plot <- plot(object,show="genotypes")
    # After running the function example, manipulate a parameter within the function to create a new result. 
        # Common options might be allele frequency, population size, fitness level, etc. 
        # Add the results of this manipulation to your script (if in the console) or upload the new plot.
       
          # By manipulating these parameters you can see how it impacts the results.
          # This type of manipulation is one example of how theoretical ecology and modelling are used to predict patterns in nature.



## (4) Using Google and ONLY packages from GitHub or CRAN:
    # Find a package that will generate standard diversity metrics for community ecology, specifically Simpson's Diversity Index.
library(diverse)
    # Copy-paste into your script - and run - an example from the reference manual for a function to calculate Simpson's diversity. 
        # Depending on the example usage of the function, either upload a plot of the result or use print() and copy/paste the console output into your script.
data(pantheon)
diversity(pantheon)
diversity(pantheon, type='variety')
diversity(geese, type='berger-parker', category_row=TRUE)
#reading csv data matrix
path_to_file <- system.file("extdata", "PantheonMatrix.csv", package = "diverse")
X <- read_data(path = path_to_file)
diversity(data=X, type="gini")
diversity(data=X, type="rao-stirling", method="cosine")
diversity(data=X, type="all", method="jaccard")
#reading csv dataframe
path_to_file <- system.file("extdata", "PantheonEdges.csv", package = "diverse")
X <- read_data(path = path_to_file)
#hill numbers
diversity(data=X, type="td", q=1)
#rao stirling with differente arguments
diversity(data=X, type="rao-stirling", method="euclidean", alpha=0, beta=1)
#more than one diversity measure
diversity(data=X, type=c('e','ev','bp','s'))   
# After running the function example, modify your script to generate another diversity metric that is NOT part of the example. 
        # If there are two diversity metrics in the example script, neither of these will count as the modified script.
        # Hint: If the function can "only" caluclate Simpson's diversity, the inverse of Simpson's diversity is another common metric. 
        # Add the results of this manipulation to your script (if in the console) or upload the new plot.
diversity(pantheon, type = 's')
        
          # Diversity metrics are frequently used in community ecology for reasons ranging from a quick comparison between sites to understanding community stability.
          # Their calculation can be very tedious by hand - and very fast with a package designed for the operation.



##NOTE - learnpopgen was not cooperating for this at all even when I copied examples from the manual... 
## No code for plotting in diversity given

