# requirements-aws
AWS requirements and preparations for github and terraform automation

## Deployment
Usar el template de cloudformation [primary-stack.yml](primary-stack.yml) y puede hacerse a mano desde la consola de AWS.
Para nuestro caso se usaron los siguientes parámetros:

| Parameter | Value |
| ----------|-------|
| TfBucketName | hangarlabs-tfstate |
| GitHubOrg | HangarLabsNet |
| GitHubRepositoryName | requirements-aws |
