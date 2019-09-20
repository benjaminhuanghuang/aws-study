## List lambda functions
aws lambda list-functions


aws lambda list-functions  --output table


aws lambda list-functions --query Functions[].FunctionName


JSON process
```
aws lambda list-functions --query | jq '.Functions[].FunctionName'
```

## Create Lambda function
```
aws lambda create-function --function-name FindAllMovies \
--zip-file fileb://./deployment.zip \
--runtime go1.x --handler main \
--role arn:aws:iam::ACCOUNT_ID:role/FindAllMoviesRole \
--region us-east-1
```

## Deploy / Update
```
aws lambda update-function-code --function-name HelloServerless \
--zip-file fileb://./deployment.zip \
--region us-west-2
```


## invoke
```
  aws lambda invoke --function-name books /tmp/output.json
```