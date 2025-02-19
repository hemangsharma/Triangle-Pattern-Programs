package main

import (
    "bufio"
    "fmt"
    "os"
    "strconv"
)

func printTriangle(rows int) {
    for i := 1; i <= rows; i++ {
        // Print spaces before stars
        for j := 1; j <= rows-i; j++ {
            fmt.Print(" ")
        }

        // Print stars
        for k := 1; k <= i; k++ {
            fmt.Print("* ")
        }

        // Print newline
        fmt.Println()
    }
}

func main() {
    // Ask the user for the number of rows
    scanner := bufio.NewScanner(os.Stdin)
    fmt.Print("Enter the number of rows: ")
    scanner.Scan()
    rows, _ := strconv.Atoi(scanner.Text())

    // Print the triangle pattern
    printTriangle(rows)
}