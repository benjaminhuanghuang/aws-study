The AWS Serverless Application Model (AWS SAM) is an open-source framework that you can use to build serverless applications on AWS.

## Setup
```
  python --version  # need 3.x
  easy_install pip
  pip install aws-sam-cli
```

## Create project
```
  aws init --runtime nodejs8.10
```

## Create S3 bucket for lambda deployment package
``` 
  aws s3 mb s3://ben-rms-bucekt-test --region us-west-2
```

## Create package
```
  sam package \
  --template-file ./lambda.yml \
  --output-template-file sam-template.yml \
  --s3-bucket ben-rms-bucekt-test
``` 


## Deploy
```
  sam deploy \
  --template-file ./sam-template.yml \
  --stack-name mystack \
  --s3-bucket ben-rms-bucekt-test
``` 