# Using the Vertex AI task for embedding GenAI into your Integrations

This sample integration contains a flow to be used as a sub-integration for interacting with Google Cloud's Vertex AI models.

Each task has a description that explains what the task is used for that you can see in the Integration UI.

## Prerequisites

- You must have enabled the [Vertex AI API](https://cloud.google.com/vertex-ai/docs/start/cloud-environment) in your project.
- You must have [IAM permissions](https://cloud.google.com/application-integration/docs/predefined-iam-roles-permissions) for creating and deploying Application Integration integrations in your project.
- You must created a [GCP Service Account](https://cloud.google.com/iam/docs/service-accounts-create) that has [permissions](https://cloud.google.com/vertex-ai/docs/general/access-control) to invoke the Vertex AI API. Create an [Autentication Profile](https://cloud.google.com/application-integration/docs/configure-authentication-profiles#service-account) of type service account with the required permissions. Please attach this Authentication Profile to the Vertex AI task in the Integration designer.

## Upload, configure and run the sample integration

To upload and run the sample integration, do the following steps:

1. Clone the repo

```sh
https://github.com/GoogleCloudPlatform/application-integration-samples.git
```

2. Navigate to the `vertex-ai-task` directory

```sh
cd src/vertex-ai-task
```

3. In the Google Cloud console, go to the [Application Integration](https://console.cloud.google.com/integrations?_ga=2.161317246.2144651509.1683660420-1351281240.1683660420) page
4. In the navigation menu, click Integrations. The Integrations List page appears.
5. Select an existing integration or create a new integration by clicking Create integration.
   If you are creating a new integration:
   i) Enter a name `vertex-ai-task-integration` and description in the Create Integration dialog.
   ii) Select a Region for the integration from the list of supported regions.
   iii) Click Create.
   This opens the integration in the integration designer.
6. In the integration designer, click `Upload/download menu` and then select `Upload integration`.
7. In the file browser dialog, select `vertex-ai-task.json`, and then click Open. A new version of the integration is created using the uploaded file.
8. Click on the Vertex AI - Predict task in the canvas, and under Authentication (right-hand side pannel), select the previously created Authentication Profile.
9. In the Integration designer, click Test. Add a sample prompt such as "Generate a list of pizzas" for the TextPrompt input variable.
