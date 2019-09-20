# Reference

- Hands on Serverless Applications with Go
  https://github.com/PacktPublishing/Hands-On-Serverless-Applications-with-Go


## Commands
Create lambda
```
aws lambda create-function --function-name FindAllMovies \
--zip-file fileb://./deployment.zip \
--runtime go1.x --handler main \
--role arn:aws:iam::ACCOUNT_ID:role/FindAllMoviesRole \
--region us-west-2
```

```
aws lambda create-function --function-name FindOneMovie \
--zip-file fileb://./deployment.zip \
--runtime go1.x --handler main \
--role arn:aws:iam::ACCOUNT_ID:role/FindOneMovieRole \
--region us-west-2
```

```
aws lambda update-function-configuration --function-name FindAllMovies \
--environment Variables={TABLE_NAME=movies} \
--region us-east-1
```