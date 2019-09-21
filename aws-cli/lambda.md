## List lambda functions
aws lambda list-functions


aws lambda list-functions  --output table


aws lambda list-functions --query Functions[].FunctionName


JSON process
```
aws lambda list-functions --query | jq '.Functions[].FunctionName'
```

## Deploy Lambda function
- Create lambda function using zip file
```
aws lambda create-function --function-name FindAllMovies \
--zip-file fileb://./deployment.zip \
--runtime go1.x --handler main \
--role arn:aws:iam::ACCOUNT_ID:role/FindAllMoviesRole \
--region us-east-1
```

- Create python lambda function using zip file
```
aws lambda create-function \
--region us-east-2 \
--function-name MyCLITestFunction \
--role arn:aws:iam:account-id:role/role_name \
--runtime python3.6 \
--handler MyCLITestFunction.my_handler \
--zip-file fileb://path/to/function/file.zip
```
- Create lambda function using S3
```
aws lambda create-function --function-name UpdateMovie \
--description "Update an existing movie" \
--runtime go1.x \
--role arn:aws:iam::ACCOUNT_ID:role/UpdateMovieRole \
--handler main \
--environment Variables={TABLE_NAME=movies} \
--code S3Bucket=movies-api-deployment-package,S3Key=deployment.zip \
--region us-east-1
```

- Create apigateway
```
aws apigateway put-method --rest-api-id API_ID \
--resource-id RESOURCE_ID \
--http-method DELETE \
--authorization-type "NONE" \
--region us-west-2
```


## Get API information
- REST API ID:
```
aws apigateway get-rest-apis --query "items[?name==\`MoviesAPI\`].id" --output
```
- Resource ID:
```
aws apigateway get-resources --rest-api-id API_ID --query "items[?path==\`/
```

## Deploy / Update
Uisng zip file
```
aws lambda update-function-code --function-name HelloServerless \
--zip-file fileb://./deployment.zip \
--region us-west-2
```

Using S3
```
aws lambda update-function-code --function-name UpdateMovie \
--s3-bucket movies-api-deployment-packages \
--s3-key deployment-1.0.0.zip \
--region us-east-1
```



## invoke
```
  aws lambda invoke --function-name books /tmp/output.json
```