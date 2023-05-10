# How to Contribute

It's great to get community contributions! If you'd like to contribute to this project, make sure to review and follow the guidelines below.

## General guidelines

1) Samples in this repo are targeted for [Application Integration](https://cloud.google.com/application-integration/docs/overview), aimed for the following audience who are getting started with the product:
    - Integration developers.
    - Integration administrators.
2) The primary focus of this repo is to provide Application Integration code samples of low to medium complexity. 
3) Samples accepted to this repository can be considered a recommended best practice by product management, field engineers, customers and community.
4) Samples accepted to this repository might also be documented in the public Application Integration [documentation](https://cloud.google.com/application-integration/docs/samples). 

## Sample folder structure
Use the following folder structure for all samples:

```bash
├── application-integration-samples
│   ├── samples
│   │   ├── bq-sample-dataset.json
│   ├── src
│   │   ├── <sample-folder-name> # replace <sample-folder-name> with the name of the parent sample folder
│   │   │   ├── sample-file-name.json # replace <sample-file-name> with the name of the sample json file
│   │   │   ├── sample-flow.png # do not change the file name sample-flow.png
│   ├── └── └── README.md # do not change the file name README.md
│   ├── CONTRIBUTING.md
└── └── README.md
```

where `<sample-folder-name>` is the folder containing the following sample files:
1) `<sample-file-name>.json`: The integration json file.
2) `sample-flow.png`: Screenshot/image of the working integration flow.
3) `README.md`: A separate readme file containing the sample title, description, steps to execute, and any other information that you would like to highlight.

## Naming convention

- Use the following guidelines for all samples:
- Use all lowercase. For example, add-two-numbers.json.
- Use hyphens, not underscores, to separate words.
- In the filename, order the words as they might appear in the main heading of your document. For example, convert-string-to-integer.json.

## Pull request checklist

- Sign the [Google Contributor License Agreement](https://github.com/GoogleCloudPlatform/apigee-samples/blob/main/CONTRIBUTING.md#cla).
- Follow the file naming convention and folder structure described above.
- Ensure that your sample integration executes end-to-end successfully.
- List the sample in the main [README](README.md) file.

## Pull request checklist

1) If you want to list your sample in the [Application Integration public documentation](https://cloud.google.com/application-integration/docs/samples), then submit a [documentation request](https://github.com/GoogleCloudPlatform/application-integration-samples/issues/new?assignees=&labels=documentation&template=documentation-request.md).
2) Fork the repository and add your integration sample. Please don't make changes to multiple projects in the same pull request
3) Ensure that your pull request complies to the pull request checklist described above
4) Submit your pull request, and the repo maintainers will perform a code review.
5) Once the issues are resolved, your change will be merged!


## Contributor License Agreement

Contributions to this project must be accompanied by a Contributor License
Agreement. You (or your employer) retain the copyright to your contribution;
this simply gives us permission to use and redistribute your contributions as
part of the project. Head over to <https://cla.developers.google.com/> to see
your current agreements on file or to sign a new one.

You generally only need to submit a CLA once, so if you've already submitted one
(even if it was for a different project), you probably don't need to do it
again.

## Code reviews

All submissions, including submissions by project members, require review. We
use GitHub pull requests for this purpose. Consult
[GitHub Help](https://help.github.com/articles/about-pull-requests/) for more
information on using pull requests.

## Community Guidelines

This project follows [Google's Open Source Community
Guidelines](https://opensource.google.com/conduct/).