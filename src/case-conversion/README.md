# Convert a string to uppercase

Using the Data Mapping task, iterate through the elements of a string array and apply transformation functions to convert each string value to uppercase.

## Upload and run the sample integration

To upload and run the sample integration, do the following steps:

1) Clone the repo 
```sh
https://github.com/GoogleCloudPlatform/application-integration-samples.git
```
2) Navigate to the `case-conversion` director
```sh
cd src/case-conversion
```
3) In the Google Cloud console, go to the [Application Integration](https://console.cloud.google.com/integrations?_ga=2.161317246.2144651509.1683660420-1351281240.1683660420) page
4) In the navigation menu, click Integrations. The Integrations List page appears.
5) Select an existing integration or create a new integration by clicking Create integration.
If you are creating a new integration:
    i) Enter a name `case-conversion` and description in the Create Integration dialog.
    ii) Select a Region for the integration from the list of supported regions.
    iii) Click Create.
This opens the integration in the integration designer.
6) In the integration designer, click `Upload/download menu` and then select `Upload integration`.
7) In the file browser dialog, select `case-conversion.json`, and then click Open. A new version of the integration is created using the uploaded file.
8) In the integration designer, click Test.
9) Click Test integration. This runs the integration and displays the execution result in the Test Integration dialog.

