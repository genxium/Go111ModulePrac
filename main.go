package main

import (
	"fmt"
	"github.com/gin-gonic/gin"
	"mycompany.org/thisproj/arithmetic"
	"strconv"
)

type Res struct {
	Ret int `json:"ret"`
	Sum int `json:"sum"`
}

const (
	OK = 1000
)

func main() {
	router := gin.Default()
	router.GET("v:version/test-api", func(c *gin.Context) {
		defer func() {
			if r := recover(); r != nil {
				fmt.Printf("test-api, recovery spot#1, recovered from: %v\n", r)
			}
		}()
		c.Header("Content-Type", "application/json")
		a, aerr := strconv.Atoi(c.Query("a"))
		if aerr != nil {
			panic(aerr)
		}
		b, berr := strconv.Atoi(c.Query("b"))
		if berr != nil {
			panic(berr)
		}
		sum := arithmetic.Add(a, b)

		r := Res{
			Ret: OK,
			Sum: sum,
		}

		c.JSON(200, r)
	})

	router.Run(":8080")
}
