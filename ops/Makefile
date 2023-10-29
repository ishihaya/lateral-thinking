.PHONY: format
format:
	terraform fmt -recursive

.PHONY: terraform-plan
terraform-plan: ENV ?= dev
terraform-plan:
	(cd $(ENV) && terraform plan)

.PHONY: terraform-apply
terraform-apply: ENV ?= dev
terraform-apply:
	(cd $(ENV) && terraform apply)