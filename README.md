# Application Integration samples

This repository contains samples for
[Application Integration](https://cloud.google.com/application-integration/docs).

## Overview

This repository contains sample integration code snippets that demonstrate various integration related use cases.
Each sample is a JSON file containing all integration metadata. For information about how to download and upload an integration using Application Integration, see [Upload and download integrations](https://cloud.google.com/application-integration/docs/upload-download).

## Repository structure

*   All integration samples are placed in the `src/` directory
*   All files having sample data required for some of the samples have the
file format `<file_name>-dataset.json` placed in the `samples` directory.

```bash
├── application-integration-samples
│   ├── samples
│   │   ├── bq-sample-dataset.json
│   ├── src
│   │   ├── <sample-folder-name-1>
│   │   │   ├── sample-file-name.json
│   │   │   ├── sample-flow.png
│   │   │   └── README.md
│   │   ├── <sample-folder-name-2>
│   │   │   ├── sample-file-name.json
│   │   │   ├── sample-flow.png
│   ├── └── └── README.md
│   ├── CONTRIBUTING.md
└── └── README.md
```

## Contributing

See the [Contributing Guide](CONTRIBUTING.md)

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

## Getting help

Please use the [issues page](https://github.com/GoogleCloudPlatform/application-integration-samples/issues) to provide feedback or submit a bug report.

## Disclaimer

The code samples in this repository are for demonstrative purposes only

## Feedback

Please feel free to fill out our [survey](https://forms.gle/qJzdCFNW7fZr33Z17) to give us feedback on the repo and its content.