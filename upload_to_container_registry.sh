# Upload to container registry
gcloud builds submit --tag gcr.io/$(gcloud config get-value project)/$1

