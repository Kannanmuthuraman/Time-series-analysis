R-CODE FOR SEMI AVERAGE METHOD:
  # Sample time series data
  >data <- c(10, 15, 20, 25, 30)
  
  # Function to calculate semi-average
  >semi_average <- function(data) {
    >n <- length(data)
    >result <- numeric(n-1)
    
    >for (i in 1:(n-1)) {
      >result[i] <- (data[i] + data[i+1]) / 2
      >}
    
    >return(result)
    >}
  
  # Applying semi-average method
  >result <- semi_average(ts_data)
  >print(result)
  
  R-CODE FOR MOVING AVERAGE METHOD:
    # install.packages("zoo")
    # library(zoo)
    
    # Sample time series data
    >ts_data <- c(10, 15, 20, 25, 30, 35, 40)
  
  # Function to calculate moving average
  >moving_average <- function(data, window_size) {
    >library(zoo)
    >result <- rollapply(data, width = window_size, FUN = mean, align = "right", fill = NA)
    >return(result)
    >}
  
  # Specify the window size for the moving average
  >window_size <- 2
  
  # Applying moving average method
  >result <- moving_average(ts_data, window_size)
  >print(result)
  
  R-CODE FOR LEAST SQUARE METHOD:
    # Sample data
    >time <- 1:10
  >values <- c(10, 12, 15, 20, 22, 25, 30, 32, 35, 40)
  
  # Fitting a linear regression model
  >lm_model <- lm(values ~ time)
  
  # Predicted values from the linear regression model
  >predicted_values <- predict(lm_model)
  
  # Eliminating trend by subtracting predicted values
  >detrended_values <- values - predicted_values
  
  # Displaying original and detrended values
  >data.frame(Time = time, Original_Values = values, Detrended_Values = detrended_values)
  
  R-CODE FOR SIMPLE AVERAGE METHOD:
    # Sample time series data
    >ts_data <- c(50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150, 160)
  
  # Number of seasons (assuming a seasonal pattern with equal lengths)
  >num_seasons <- 4
  
  # Calculate seasonal indices using simple average
  >calculate_seasonal_indices <- function(data, num_seasons) {
    >n <- length(data)
    >seasonal_indices <- numeric(num_seasons)
    
    >for (i in 1:num_seasons) {
      >seasonal_indices[i] <- mean(data[i:(n-num_seasons+i):num_seasons])
      >}
    
    >return(seasonal_indices / mean(seasonal_indices))
    >}
  
  # Applying the simple average method to calculate seasonal indices
  >seasonal_indices <- calculate_seasonal_indices(ts_data, num_seasons)
  
  # Display the seasonal indices
  >print(seasonal_indices)
  
  R-CODE FOR RATIO TO TREND METHOD:
    # Sample time series data
    >ts_data <- c(50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150, 160)
  
  # Number of seasons (assuming a seasonal pattern with equal lengths)
  >num_seasons <- 3
  
  # Function to calculate seasonal indices using ratio to trend method
  >calculate_seasonal_indices <- function(data, num_seasons) {
    >n <- length(data)
    >time <- 1:n
    
    # Fit a linear regression model to represent the trend
    >lm_model <- lm(data ~ time)
    
    # Calculate the trend values
    >trend_values <- predict(lm_model)
    
    # Calculate the ratio of observed values to trend values
    >ratio_to_trend <- data / trend_values
    
    # Calculate seasonal indices
    >seasonal_indices <- numeric(num_seasons)
    >for (i in 1:num_seasons) {
      >seasonal_indices[i] <- mean(ratio_to_trend[i:(n - num_seasons + i):num_seasons])
      > }
    
    >return(seasonal_indices / mean(seasonal_indices))
    >}
  
  # Applying the ratio to trend method to calculate seasonal indices
  >seasonal_indices <- calculate_seasonal_indices(ts_data, num_seasons)
  
  # Display the seasonal indices
  >print(seasonal_indices)
  
  