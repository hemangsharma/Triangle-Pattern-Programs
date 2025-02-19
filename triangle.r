print_triangle <- function(rows) {
  for (i in 1:rows) {
    # Print spaces before stars
    cat(rep(" ", rows - i))
    
    # Print stars
    cat(rep("* ", i), "\n")
  }
}

# Ask the user for the number of rows
rows <- as.integer(readLines("stdin", n = 1))

# Print the triangle pattern
print_triangle(rows)