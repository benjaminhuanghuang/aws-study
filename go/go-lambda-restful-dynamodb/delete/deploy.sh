aws lambda create-function --function-name DeleteMovie \
--zip-file fileb://./deployment.zip \
--runtime go1.x --handler main \
--role arn:aws:iam::ACCOUNT_ID:role/DeleteMovieRole \
--environment Variables={TABLE_NAME=ben-movies} \
--region us-west-2

aws apigateway put-method --rest-api-id API_ID \
--resource-id RESOURCE_ID \
--http-method DELETE \
--authorization-type "NONE" \
--region us-west-2


