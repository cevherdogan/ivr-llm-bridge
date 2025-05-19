# 🚀 Deploying `connect_llm_stack.yaml` - IVR to LLM Bridge on AWS

This guide walks you through deploying the CloudFormation stack that connects **Amazon Connect**, **AWS Lambda**, and an **LLM model** (via Bedrock or OpenAI).

---

## 📦 Prerequisites

- AWS account with admin or CloudFormation deployment rights
- AWS CLI installed and configured (`aws configure`)
- IAM permissions for Lambda, IAM, CloudFormation, and Bedrock (optional)

---

## 🛠️ 1. Deploy via AWS CLI

```bash
aws cloudformation create-stack \
  --stack-name ivr-llm-bridge \
  --template-body file://connect_llm_stack.yaml \
  --capabilities CAPABILITY_NAMED_IAM \
  --parameters ParameterKey=LambdaFunctionName,ParameterValue=IVRLLMHandler
````

This creates:

* ✅ `IVRLLMHandler` Lambda function
* ✅ IAM Role with Bedrock + CloudWatch permissions

---

## 🧼 2. Update Stack

To redeploy with changes:

```bash
aws cloudformation update-stack \
  --stack-name ivr-llm-bridge \
  --template-body file://connect_llm_stack.yaml \
  --capabilities CAPABILITY_NAMED_IAM
```

---

## 🗑️ 3. Delete Stack

```bash
aws cloudformation delete-stack --stack-name ivr-llm-bridge
```

---

## 🧩 Next Steps

* Link Lambda into **Amazon Connect Contact Flow**
* Add real logic to `lambda/handler.py`
* Plug in **LLM (OpenAI or Bedrock)**

---

## 📎 References

* [Amazon Connect](https://docs.aws.amazon.com/connect/latest/adminguide/what-is-amazon-connect.html)
* [AWS Lambda Docs](https://docs.aws.amazon.com/lambda/latest/dg/welcome.html)
* [Bedrock Runtime API](https://docs.aws.amazon.com/bedrock/latest/userguide/api-reference.html)

---

## 🧠 Tip

To enable voice streaming to LLM, use Amazon Lex v2 or integrate an audio transcription layer in the Lambda middleware.

```
