package main

import (
	"fmt"
	"time"
)

func main() {
	sum := 1
	for {
		sum++ // repeated forever
		fmt.Println(sum)
		time.Sleep(1 * time.Second)
	}
}
