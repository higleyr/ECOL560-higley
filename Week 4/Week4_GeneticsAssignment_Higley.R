# Look at the plot and model results for our Dryad data in the tutorial. Part 1: Without knowing which points represent which groups, 
  # give one explanation for why these data might be difficult to draw spatial inferences about genes.(3 points)
            # You can only visualize the clumping together of then data points. #what does this tell you about the genes? This a good start to the answer.
  # Part 2: Despite the drawbacks, give the result or interpretation that you feel most confident in (3 points), and EXPLAIN WHY (4 points).
            # The gene represented by the black colored dot is likely a housekeeping-type gene as it is universal and spread relatively equally across the scatterplot.#more of the why?


# For your scripting assignment we will use the "ge_data" data frame found in the "stability" package.
  # Install the "stability" package, load it into your R environment, and use the data() function to load the "ge_data". (2 points)

install.packages("stability")
library(stability)
data("ge_data")
force(ge_data) #having issues, were we?

# Create two linear models for Yield Response: one related to the Environment and one to the Genotype. (2 points each)
  # 'Yield Response' in this dataset is a measure of phenotype expression.
  # Hint: Look at the help file for this dataset.

lmEnv <- lm(ge_data$Yield~ge_data$Env)
lmYield <- lm(ge_data$Yield~ge_data$Gen)

# Test the significance of both models and look at the model summary. (3 points each)
  # Which model is a better fit to explain the yield response, and WHY? (6 points)
        # The yield-environment model is better fit to explain yield response. This is because of the ratio of x to y values and how many things you are trying to explain. #What about the r-squared and p values?
  # Hint: Does one model seem more likely to be over-fitted?
        #  The model with the genotype is likely overfitted....? Yes..why?

anova(lmEnv)
anova(lmYield)

summary(lmEnv)
summary(lmYield)

# Which environment would be your very WORST choice for generating a strong yield response? (2 points)
 
plot(ge_data$Yield~ge_data$Env)

        #KSK would be worst for a strong yield response.#notice the question was not about a positive or negative response, simply a strong response. Sargodha is worst because it does not show any relationship to yield.


