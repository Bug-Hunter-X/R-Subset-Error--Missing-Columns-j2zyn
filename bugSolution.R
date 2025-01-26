```R
# This improved code uses the intersect function to select only the columns that exist in both the data frame and the specified columns vector. 
# If any specified columns are missing, the code will handle the error gracefully, preventing the script from crashing. 

data <- data.frame(A = 1:3, B = 4:6, C = 7:9)
columns_to_select <- c("A", "D", "B")

# Select only columns that exist in both the data frame and the vector
existing_columns <- intersect(names(data), columns_to_select)

subset_data <- data[, existing_columns]

# Print a message to inform the user which columns were missing
missing_columns <- setdiff(columns_to_select, existing_columns)
if(length(missing_columns) > 0){
  message(paste("The following columns were not found in the data frame:", paste(missing_columns, collapse = ", ")))
}

print(subset_data)
```