PROJECT_ID=fyro-360715

run-local:
	docker-compose up

###

set-gcs-project:
	gcloud config set project ${PROJECT_ID}

###

create-tf-backend-bucket:
	gcloud alpha storage buckets create gs://${PROJECT_ID}-terraform

###

ENV=staging

terraform-create-workspace:
	cd terraform && \
	  terraform workspace new ${ENV}

terraform-init:
	cd terraform && \
	terraform workspace select ${ENV} && \
	terraform init