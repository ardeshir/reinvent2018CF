# lab 1
aws cloudformation package --template-file lab1-macro.yaml --s3-bucket dev418lab1 --output-template-file lab1-packaged.yaml

aws cloudformation deploy --stack-name count-macro --template-file lab1-packaged.yaml --capabilities CAPABILITY_IAM

aws cloudformation deploy --stack-name count-test --template-file lab1-example.yaml --capabilities CAPABILITY_IAM

# lab 2

aws cloudformation package --template-file lab2-macro.yaml --s3-bucket dev418lab1 --output-template-file lab2-packaged.yaml

#aws cloudformation deploy --template-file /Users/administrator/DEV418/Lab2/lab2-packaged.yaml --stack-name <YOUR STACK NAME>

aws cloudformation deploy --stack-name s3objects-macro --template-file lab2-packaged.yaml --capabilities CAPABILITY_IAM

aws cloudformation describe-stacks --stack-name s3objects-macro

aws cloudformation deploy --stack-name s3objects-test --template-file lab2-example.yaml --capabilities CAPABILITY_IAM

aws cloudformation describe-stack-resources --stack-name s3objects-test