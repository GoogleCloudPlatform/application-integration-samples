# Retry based on Rest Caller response status

Using the Data Mapping task, iterate through the elements of a string array and apply transformation functions to convert each string value to uppercase.

## Upload and run the sample integration

To upload and run the sample integration, do the following steps:

1) Clone the repo 
```sh
https://github.com/GoogleCloudPlatform/application-integration-samples.git
```
2) Navigate to the `status-based-retry` directory
```sh
cd src/status-based-retry
```
3) In the Google Cloud console, go to the [Application Integration](https://console.cloud.google.com/integrations?_ga=2.161317246.2144651509.1683660420-1351281240.1683660420) page
4) In the navigation menu, click Integrations. The Integrations List page appears.
5) Create a new integration by clicking Create integration.
    i) Enter a name `status-based-retry-sub` and description in the Create Integration dialog.
    ii) Select a Region for the integration from the list of supported regions.
    iii) Click Create.
This opens the integration in the integration designer.
6) In the integration designer, click `Upload/download menu` and then select `Upload integration`.
7) In the file browser dialog, select `status-based-retry-sub.json`, and then click Open. A new version of the integration is created using the uploaded file.
8) Publish the integration.
9) Create another integration with name `status-based-retry-main` and upload `status-based-retry-main.json`. A new version of the integration is created using the uploaded file.
10) In the integration designer, click Test.
11) Click Test integration. This runs the integration and displays the execution result in the Test Integration dialog.

