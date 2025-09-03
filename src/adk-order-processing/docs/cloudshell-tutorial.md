# Order Processing Agent with human in the loop workflow using Application Integration

## Overview

This agent sample showcases the art of the possible using the [ADK](https://google.github.io/adk-docs) and [Application Integration](https://cloud.google.com/application-integration/docs/overview), Google Cloud’s low-to-no code integration platform for building Agentic workflows. Application Integration will be used in this sample to orchestrate a deterministic set of operations, including the following:
- Order processing/storage via BigQuery
- Orchestrating email confirmations once the order data has been written to BigQuery
- Invoking a “Human in the Loop” approval pattern if the order quantity exceeds 100
  
### Agent Architecture

![architecture](https://github.com/GoogleCloudPlatform/application-integration-samples/blob/main/src/adk-order-processing/adk-order-processing-arch-flow.png?raw=true)

### Setup and Installation

#### Prerequisites

- Google Cloud Project with the following roles assigned
  - Application Integrations Admin
  - Connectors Admin
  - Secret Manager Admin
  - Storage Admin
  - Service Usage Consumer
  - Logs Viewer
  - BigQuery Admin
- Setup [Application Integration](https://cloud.google.com/application-integration/docs/setup-application-integration) and [Integration Connectors](https://cloud.google.com/integration-connectors/docs/setup-integration-connectors)

Once you have created your project, [install the Google Cloud SDK](https://cloud.google.com/sdk/docs/install). Then run the following command to authenticate:
```bash
gcloud auth login
```
You also need to enable certain APIs. Run the following command to enable:
```bash
export PROJECT_ID=<walkthrough-project-id/>
gcloud services enable bigquery.googleapis.com --project "$PROJECT_ID"
```

Let's get started!

---

## Application Integration Setup

1. Navigate to the 'adk-order-processing' directory in your terminal
```sh
cd src/adk-order-processing
```
2. Click <walkthrough-editor-open-file filePath="src/adk-order-processing/env.sh">here</walkthrough-editor-open-file> to open the file in the editor. Update the `env.sh` file with the appropriate values and run 
```sh
source env.sh
```
3. Run the following command (NOTE: This will take a few minutes to provision)
```sh
./deploy-integration.sh
```
4. Once the script has completed running, you can login to the GCP console and navigate to `Integration Connectors` to find a connnector called `bq-orders`
5. Similarly, navigate to Application Integration and find `sample_order_processing` created and published
   
---

## Conclusion

<walkthrough-conclusion-trophy></walkthrough-conclusion-trophy>

Congratulations! You've successfully deployed the Application Integration Assets. If you plan to deploy the ADK agent, please go back to [sample](https://github.com/ssvaidyanathan/adk-samples/tree/main/python/agents/order-processing)