# Upload Download GCS SFTP

This sample integration contains two flows. 
1. Download a file from SFTP and upload it to GCS 
1. Download a file from GCS and upload it to SFTP 
     - This has both a pubsub trigger and an API Trigger

Each task has a description that explains what the task is used for that you can see in the Integration UI.

## Prerequisites
- SFTP Connection set up and working with Read/write access
- GCS Connection (Google Cloud Storage) set up and working
- PubSub Topic to receive notifications from GCS
- Optional: GCS Notification configuration (see instructions below)

## Replace these in the .json file before uploading to Integration
- `<projectId>` : with your GCP Project ID
- `<pubsub-topic-name>` : The PubSub topic for the PubSub Trigger for the GCS Notification message
- `<region>` : The Region for your Connections (replace each instance of this)
- `<sftp-connection-name>` : The SFTP Connection Name (replace each instance of this)
- `<gcs-connection-name>` : The GCS Conenction Name (replace each instance of this)
- `<bucket-name>` : The GCS Bucket where you have your notifications set up (replace each instance of this)

## How to create the GCS Notification to PubSub
The GCS Notification feature will send a message to pubsub whenever a change happens to the Bucket where you have configurated the Notification.
Once the notification is sent to PubSub, we can use the PubSub Trigger in Integration to start the integration whenever a new file arrives in GCS

- Using your GCS Bucket and your PubSub Topic, use the following GCloud command from the GCP Console's Cloud Shell.  
- Use the same PubSub Topic for the PubSub Trigger in the Integration

`gcloud storage buckets notifications create gs://BUCKET_NAME --topic=TOPIC_NAME`

Docs for this command can be found here: https://cloud.google.com/storage/docs/reporting-changes#command-line
