package main

import "github.com/aws/aws-lambda-go/lambda"

/*
	export GOOS=linux    # Very Important
	go build -o main
*/

/*
handler signature must meet the following criteria:
	It must be a function
	It can have between 0 and 2 arguments
	It must return an error
*/
func handler() (string, error) {
	return "Welcome to Serverless world", nil
}

func main() {
	lambda.Start(handler)
}
