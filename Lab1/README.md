# CloudFormation macro: Count

This Macro allow you to provide a templata'se wide Count operator.
It order to multiply a resource you just add a `Count` key on the top level resourca'se item you want to multiply.

## Incopatibilities:

You cannot use Count on resources that has an hardcoded name. It will incurr in CloudFormation runtime failure

## Usage

```
Transform:
 - Count
Resources:
  Bucket:
    Type: AWS::S3::Bucket
    Count: 3
  Sqs:
    Type: AWS:::SQS::Queue
    Count: 2
```
