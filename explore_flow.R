
install.packages(c("ggplot2", "dplyr", "tidyr", "summarytools", "corrplot"))

# Load the libraries
library(ggplot2)
library(dplyr)
library(tidyr)
library(summarytools)
library(corrplot)

data <- read.csv("/Users/alihanhatunoglu/Desktop/2209/CSV/transformed_data_2.csv")

# Check the first few rows
head(data)

# View the structure of the dataset (data types, factor levels, etc.)
str(data)

# Get a summary of each column
summary(data)

#Visualize the Distribution of Each Variable

# Histograms
ggplot(data, aes(x = FL1.A)) + 
  geom_histogram(binwidth = 10, fill = "skyblue", color = "black") + 
  theme_minimal()

ggplot(data, aes(x = FL1.A)) + 
  geom_histogram(binwidth = 5, fill = "skyblue", color = "black") +
  labs(title = "Histogram of Numeric Column", x = "Numeric Column", y = "Frequency") +
  theme_minimal()

ggplot(data, aes(x = FL1.A)) + 
  geom_histogram(binwidth = 0.5, fill = "skyblue", color = "black") +
  scale_x_log10() +
  labs(title = "Log-Scaled Histogram", x = "Log of Numeric Column", y = "Frequency") +
  theme_minimal()


# Density Plot
ggplot(data, aes(x = FL2.A)) + 
  geom_density(fill = "skyblue") + 
  theme_minimal()

# Boxplots (to check for outliers)
ggplot(data, aes(y = FL3.A)) + 
  geom_boxplot(fill = "skyblue") + 
  theme_minimal()

ggplot(data, aes(y = FL3.A)) + 
  geom_boxplot(fill = "skyblue", outlier.colour = "red", notch = TRUE) +
  labs(title = "Boxplot of Numeric by Factor", x = "Factor Column", y = "Numeric Column") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

#Scatter Plot (Numerical vs. Numerical)

ggplot(data, aes(x = FL1.A, y = FL2.A)) + 
  geom_point(color = "skyblue") + 
  theme_minimal()

ggplot(data, aes(x = FL1.A, y = FL10.A)) + 
  geom_point(color = "blue", size = 2, alpha = 0.6) +  # Adjust size and transparency
  geom_smooth(method = "lm", color = "red") +  # Add regression line
  labs(title = "Scatter Plot with Regression Line", x = "Numeric Column 1", y = "Numeric Column 2") +
  theme_minimal()

ggplot(data, aes(x = FL1.A, y = FL10.A)) + 
  geom_point(color = "black", size = 0.01, alpha = 0.6) +
  #geom_smooth(method = "lm", color = "red") +
  scale_x_continuous(limits = c(-100, 1000)) +  # Set x-axis limits
  scale_y_continuous(limits = c(-100, 3000)) +  # Set y-axis limits
  labs(title = "Scatter Plot with FL1.A & FL10.A", x = "FL1.A", y = "FL10.A") +
  theme_minimal()

# Facet wrap example
ggplot(data, aes(x = FL1.A)) + 
  geom_histogram(binwidth = 5, fill = "skyblue", color = "black") +
  facet_wrap(~ factor_column) +  # Create subplots by factor levels
  labs(title = "Faceted Histogram", x = "Numeric Column", y = "Frequency") +
  theme_minimal()

# Calculate correlation matrix
cor_matrix <- cor(data %>% select_if(is.numeric), use = "complete.obs")

# Visualize correlation matrix
corrplot(cor_matrix, method = "color", type = "upper", tl.col = "black", tl.srt = 45)


