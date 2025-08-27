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

export PROJECT_ID="PROJECT_ID_TO_SET"
PROJECT_NUMBER="$(gcloud projects describe $PROJECT_ID --format="value(projectNumber)")"
export PROJECT_NUMBER
export REGION="REGION_TO_SET"
export SNOW_INSTANCE_NAME="SNOW_INSTANCE_NAME_TO_SET" #for ex dev######. Do not include the hostname here
export SNOW_CLIENT_ID="SNOW_CLIENT_ID_TO_SET"
export SNOW_CLIENT_SECRET="SNOW_CLIENT_SECRET_TO_SET"