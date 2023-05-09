# Remove a property of a JSON object

Using the Data Mapping task, remove a JSON property as specified in an input variable. Store the output in a new JSON variable.

## Upload and run the sample integration

To upload and run the sample integration, do the following steps:

1) Clone the repo 
```sh
https://github.com/GoogleCloudPlatform/application-integration-samples.git
```
2) Navigate to the `remove-json-property` directory
```sh
cd src/remove-json-property
```
3) In the Google Cloud console, go to the [Application Integration](https://console.cloud.google.com/integrations?_ga=2.161317246.2144651509.1683660420-1351281240.1683660420) page
4) In the navigation menu, click Integrations. The Integrations List page appears.
5) Select an existing integration or create a new integration by clicking Create integration.
If you are creating a new integration:
    i) Enter a name `remove-json-property` and description in the Create Integration dialog.
    ii) Select a Region for the integration from the list of supported regions.
    iii) Click Create.
This opens the integration in the integration designer.
6) In the integration designer, click `Upload/download menu` and then select `Upload integration`.
7) In the file browser dialog, select `remove-json-property`, and then click Open. A new version of the integration is created using the uploaded file.
8) In the integration designer, click Test.
9) Click Test integration. This runs the integration and displays the execution result in the Test Integration dialog.

