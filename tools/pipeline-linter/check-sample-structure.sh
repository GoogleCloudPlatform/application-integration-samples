#!/bin/sh
# Copyright 2023 Google LLC
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

# Ensures that all sub-projects in this repository are listed
# in the README file in the root of the repository.

set -e

ERRORS=""

for dir in "$PWD"/src/*; do
    F=$(basename -- "$dir")
    # checking if each sample follows proper naming convention (lowercase and hyphens only)
    if [[ $F =~ ^[a-z\-]+$ ]]; then
      true;
    else
      ERRORS="$ERRORS\n[ERROR] $F does not follow naming convention (lowercase and hyphens)";
    fi

    # checking if each sample has the integration json with the prefix as the sample name
    # For example if the sample is "sample", the integration jsons could be "sample.json" or "sample-sub.json"  
    for file in $PWD/src/$F/*.json; do
      filename="$(basename $file)" 
      if [[ "$filename" == $F.json || "$filename" == $F-*.json ]];
      then 
        true;
      else 
        ERRORS="$ERRORS\n[ERROR] $filename does not follow naming convention. Should have the following prefix \"$F-*\"."; 
      fi
    done

    # checking if each sample has the integration png with the prefix as the sample name
    # For example if the sample is "sample", the integration pngs could be "sample.png" or "sample-sub.png"  
    for file in $PWD/src/$F/*.png; do
      filename="$(basename $file)" 
      if [[ "$filename" == $F-flow.png || "$filename" == $F-*-flow.png ]];
      then 
        true;
      else 
        ERRORS="$ERRORS\n[ERROR] $filename does not follow naming convention. Should have the following prefix \"$F-*-flow.png\"."; 
      fi
    done
       
    # checking if each sample has a README.md
    if [[ ! -f ""$PWD"/src/$F/README.md" ]]
    then
      ERRORS="$ERRORS\n[ERROR] README.md file missing in $F sample.";
    fi  

    # checking if each sample has the integration json
    # if [[ ! -f $PWD/src/$F/$F.json ]]
    # then
    #   ERRORS="$ERRORS\n[ERROR] $F.json file missing in $F sample.";
    # fi  
    # # checking if each sample has a png
    # if [[ ! -f ""$PWD"/src/$F/$F-flow.png" ]]
    # then
    #   ERRORS="$ERRORS\n[ERROR] $F-flow.png file missing in $F sample.";
    # fi               
done

if [ -n "$ERRORS" ]; then
  echo "$ERRORS"
  exit 1
fi
