# requirements-aws
AWS requirements and preparations for github and terraform automation

## Preparaciones
Primero debe desplegarse el template de cloudformation [primary-stack.yml](primary-stack.yml) que crea lo necesario para que este repositorio pueda usar terraform sobre la cuenta de AWS. Esto puede hacerse a mano desde la consola de Web (https://console.aws.amazon.com/).
Para nuestro caso se usaron los siguientes parámetros:

| Parameter | Value |
| ----------|-------|
| TfBucketName | hangarlabs-tfstate |
| GitHubOrg | HangarLabsNet |
| GitHubRepositoryName | requirements-aws |

## Terraform
Cuando las preparaciones estén hechas ya se puede comenzar a crear recursos con terraform (con intención de migrar a OpenToFu).
