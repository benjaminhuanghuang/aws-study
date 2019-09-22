sam package \
--template-file ./lambda.yml \
--output-template-file sam-template.yml \
--s3-bucket ben-rms-bucekt-test

sam deploy \
--template-file ./sam-template.yml \
--stack-name mystack \
--s3-bucket ben-rms-bucekt-test
