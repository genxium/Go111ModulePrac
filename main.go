package main

import (
  "github.com/kardianos/vtest"
  "mycompany.org/thisproj/arithmetic"
  "fmt"
)

func main() {
  var a int
  var b int
  fmt.Printf("%v\n", vtest.Peace())
  fmt.Scan(&a, &b)
  fmt.Printf("Added to %v\n", arithmetic.Add(a, b))
}
