# Upload Download GCS SFTP


## Prerequisites
- SFTP Connection with Read/write access
- GCS Connection (Google Cloud Storage)

## Replace these in the .json file before uploading to Integration
- `<projectId>` : with your GCP Project ID
- `<region>` : The Region for your Connections
- `<sftp-connection-name>` : The SFTP Connection Name
- `<gcs-connection-name>` : The GCS Conenction Name
- `<pubsub-topic-name>` : The PubSub topic for the PubSub Trigger for the GCS Notification message
