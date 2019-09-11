# aws-study

## Get AWS credentials
- Create user under IAM
- Downlaod security credentials for that user

## AWS SDK Setup
### Add config files manually
- Setup credentials in file: ~/.aws/credentials
```
[default]
aws_access_key_id=AKIAIO5FODNN7EXAMPLE
aws_secret_access_key=ABCDEF+c2L7yXeGvUyrPgYsDnWRRC1AYEXAMPLE

[localstack]
aws_access_key_id = localstack
aws_secret_access_key = localstack
```
- Setup region in file: ~/.aws/config
```
[default]
region = us-west-2
```
### Using AWS CLI
```
  aws configure    # input config and credentials
  ls ~/.aws
```
## Python Setup
```
  $ virtualenv --system-site-packages -p python3 venv3
    
  $ . venv3/bin/activate

  (venv3)$ pip3 install boto3 --upgrade
  or
  (venv3)$ pip3 install -r requirements.txt
```