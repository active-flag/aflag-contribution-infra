PWD ?= pwd

docs:
	@echo "Generating docs recursively"
	terraform-docs .

validate:
	@echo "Validating Terraform files"
	terraform validate

fmt:
	@echo "Formatting Terraform files"
	terraform fmt -recursive -check

lint:
	@echo "TFLint linting files"
	tflint --recursive --config "$(PWD)/.tflint.hcl"

init:
	@echo "Initializing Terraform"
	terraform init

plan:
	@echo "Planning Terraform changes"
	terraform plan

apply:
	@echo "Applying Terraform changes"
	terraform apply --auto-approve