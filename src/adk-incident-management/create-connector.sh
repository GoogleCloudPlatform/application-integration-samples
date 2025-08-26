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

if [ -z "$SNOW_INSTANCE_NAME" ]; then
  echo "No SNOW_INSTANCE_NAME variable set"
  exit
fi

if [ -z "$SNOW_CLIENT_ID" ]; then
  echo "No SNOW_CLIENT_ID variable set"
  exit
fi

if [ -z "$SNOW_CLIENT_SECRET" ]; then
  echo "No SNOW_CLIENT_SECRET variable set"
  exit
fi

TOKEN=$(gcloud auth print-access-token)

SECRET_ID=snow-secret
echo "Creating Secret $SECRET_ID in Project $PROJECT_ID"
gcloud secrets create "$SECRET_ID" --replication-policy="automatic" --project "$PROJECT_ID"
echo -n "$SNOW_CLIENT_SECRET" | gcloud secrets versions add "$SECRET_ID" --project "$PROJECT_ID" --data-file=- 
echo "Secret $SECRET_ID created successfully"

echo "Installing integrationcli"
curl -L https://raw.githubusercontent.com/GoogleCloudPlatform/application-integration-management-toolkit/main/downloadLatest.sh | sh -
export PATH=$PATH:$HOME/.integrationcli/bin

cp adk-incident-management-snow-connector.json adk-incident-management-snow-connector-tmp.json
sed -i "s/SNOW_CLIENT_ID/$SNOW_CLIENT_ID/g" adk-incident-management-snow-connector-tmp.json
sed -i "s/PROJECT_NUMBER/$PROJECT_NUMBER/g" adk-incident-management-snow-connector-tmp.json
sed -i "s/SNOW_INSTANCE_NAME/$SNOW_INSTANCE_NAME/g" adk-incident-management-snow-connector-tmp.json

echo "Creating ServiceNow Connector"
integrationcli connectors create -n dynamic-snow -f adk-incident-management-snow-connector-tmp.json -p "$PROJECT_ID" -r "$REGION" -t "$TOKEN" -g --wait

rm adk-incident-management-snow-connector-tmp.json
echo "ServiceNow Connector created successfully"

