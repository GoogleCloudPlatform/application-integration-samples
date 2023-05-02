# Application Integration samples

This repository contains samples for
[Application Integration](https://cloud.google.com/application-integration/docs).

## Overview

All integration samples are in the `src/` directory with the file format
`<file_name>-integration.json`. If a sample has more than one file, all the
files will be available in the sample's directory in `src/`.

A `.json` file has the metadata of an integration. You can directly upload the
`.json` file as an integration to your project and run the integration. For more
information, see
[Upload an integration](https://cloud.google.com/application-integration/docs/upload-download#upload-an-integration).

**Note:** All files having sample data required for some of the samples have the
file format `<file_name>-dataset.json`.

## How to: Execute an integration

To execute an integration, perform the following steps:

*   Click **Test** in the integration designer toolbar.
*   In the **Test Integration** dialog, click **Test integration**.
*   After the integration completes successfully, the **Test Integration**
    dialog displays the completion message.
*   To view the integration output, click **View Logs** in the **Test
    Integration** dialog.

## How to: View execution logs

Application Integration generates execution log messages for each run of an
integration. The log messages contain information that can be helpful in
determining the status of each step in an integration, or to troubleshoot a
failed integration. For more information, see
[Execution logs](https://cloud.google.com/application-integration/docs/viewing-logs).

### <a name="samples"></a>Samples

| Sample | Description |
|---|---|
| [call-rest-api](src/call-rest-api) | Sample to call a REST endpoint using a Rest Task |
| [case-conversion](src/case-conversion) | Sample to convert a string using Data Mapping task |
| [catch-task-error](src/catch-task-error) | Sample to create an error |
| [concat-string-array](src/concat-string-array) | Sample to concat String array using Data Mpping task |
| [download-sftp-files](src/download-sftp-files) | Sample to download files from SFTP server |
| [filter-json-arrays](src/filter-json-arrays) | Sample to filter through JSON arrays |
| [foreach-loop-send-email](src/foreach-loop-send-email) | Sample to send email using a foreach loop task that calls another sub-integration |
| [invoke-sub-integration](src/invoke-sub-integration) | Sample to invoke a sub-integration |
| [merge-json-keys](src/merge-json-keys) | Sample to merge JSON using Data Mapping task |
| [remove-json-property](src/remove-json-property) | Sample to update JSON properties |
| [resolve-json](src/resolve-json) | Sample to resolve JSON  |
| [set-json](src/set-json) | Sample to create a JSON object |
| [string-to-uppercase](src/string-to-uppercase) | Sample to convert a string to uppercase |
| [upload-download-gcs-sftp](src/upload-download-gcs-sftp) | Sample to upload/download to GCS/SFTP |                    |
