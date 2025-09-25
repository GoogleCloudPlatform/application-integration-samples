#!/bin/bash

# Copyright 2025 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

if [ -z "$PROJECT_ID" ]; then
  echo "No PROJECT_ID variable set"
  exit
fi

if [ -z "$REGION" ]; then
  echo "No REGION variable set"
  exit
fi

TOKEN=$(gcloud auth print-access-token)

gcloud config set project "$PROJECT_ID"

echo "Assigning roles to Default compute service account"
gcloud projects add-iam-policy-binding "$PROJECT_ID" \
    --member="serviceAccount:$PROJECT_NUMBER-compute@developer.gserviceaccount.com" \
    --role="roles/bigquery.readSessionUser"

gcloud projects add-iam-policy-binding "$PROJECT_ID" \
    --member="serviceAccount:$PROJECT_NUMBER-compute@developer.gserviceaccount.com" \
    --role="roles/bigquery.jobUser"

gcloud projects add-iam-policy-binding "$PROJECT_ID" \
    --member="serviceAccount:$PROJECT_NUMBER-compute@developer.gserviceaccount.com" \
    --role="roles/bigquery.dataEditor"

echo "Creating the order_sample_data dataset"
gcloud services enable bigquery.googleapis.com --project $PROJECT_ID

bq --location=$REGION mk \
    --dataset \
    --description "Order Sample Dataset" \
    $PROJECT_ID:order_sample_data

echo "Creating orders table"

bq mk \
 --table \
 --description "order_sample_data table" \
 order_sample_data.orders \
 order_id:STRING,quantity:STRING,product:STRING,customer_name:STRING,shipping_address:STRING

echo "Installing integrationcli"
curl -L https://raw.githubusercontent.com/GoogleCloudPlatform/application-integration-management-toolkit/main/downloadLatest.sh | sh -
export PATH=$PATH:$HOME/.integrationcli/bin

sed -i "s/replaceme@testing.com/$USER/g" src/sample_order_processing.json
sed -i "s/PROJECT_ID/$PROJECT_ID/g" src/sample_order_processing.json
sed -i "s/REGION/$REGION/g" src/sample_order_processing.json
sed -i "s/PROJECT_ID/$PROJECT_ID/g" connectors/bq-orders.json

integrationcli integrations apply -f . -p $PROJECT_ID -r $REGION -t $TOKEN -g --wait