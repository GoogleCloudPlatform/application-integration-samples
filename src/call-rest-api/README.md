# Call REST API using REST Task

Using the Call REST Endpoint task, make a call to https://mocktarget.apigee.net/json, and save the response in a JSON variable.

## Upload and run the sample integration

To upload and run the sample integration, do the following steps:

1) Clone the repo 
```sh
https://github.com/GoogleCloudPlatform/application-integration-samples.git
```
2) Navigate to the `call-rest-api` directory
```sh
cd src/call-rest-api
```
3) In the Google Cloud console, go to the [Application Integration](https://console.cloud.google.com/integrations?_ga=2.161317246.2144651509.1683660420-1351281240.1683660420) page
4) In the navigation menu, click Integrations. The Integrations List page appears.
5) Select an existing integration or create a new integration by clicking Create integration.
If you are creating a new integration:
    i) Enter a name `call-rest-task` and description in the Create Integration dialog.
    ii) Select a Region for the integration from the list of supported regions.
    iii) Click Create.
This opens the integration in the integration designer.
6) In the integration designer, click `Upload/download menu` and then select `Upload integration`.
7) In the file browser dialog, select `call-rest-api.json`, and then click Open. A new version of the integration is created using the uploaded file.
8) In the integration designer, click Test.
9) Click Test integration. This runs the integration and displays the execution result in the Test Integration dialog.

