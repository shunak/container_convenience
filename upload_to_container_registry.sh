#!/bin/bash
if [ $# != 1 ]; then
    echo "Error: Need your container's image name, input image name as a first argument." $*
    exit 1
else
    echo "Start uploading a new imange to your current GCP project..."
fi

# Upload to container registry
gcloud builds submit --tag gcr.io/$(gcloud config get-value project)/$1

