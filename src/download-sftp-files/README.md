## Before you begin

You can use the `https://www.sftp.net/public-online-sftp-servers` public SFTP
endpoint to do a basic test or create an SFTP connection to your own SFTP
server.

## Steps to run the integration sample

1.  Create the SFTP Connection
1.  Create two new integrations with names `sftp-get-file` and
    `sftp-poll-path-for-file`
    1.  Open the `sftp-get-file` integration and then upload the
        `sftp-get-file-v8.json` file.
    1.  Open the `sftp-poll-path-for-file` integration and then upload the
        `sftp-poll-path-for-file-v14.json` file.
1.  In the `sftp-poll-path-for-file` integration, configure the Connectors task.
    1.  Click the `SFTP Connector List Files` connector task.
    1.  Click `Configure Task`.
    1.  Click the Reset button.
    1.  Select the region where your SFTP Connection is running.
    1.  Select the SFTP connection from the list.
    1.  Select Entities for the Type.
    1.  Select Root.
    1.  Select the `List` operation.
    1.  Click `Done`
1.  Configure the filter variable mapping in the DataMapper task placed before
    the `SFTP Connector List Files` connector task.
    1.  Set the filterClause variable of the `SFTP Connector List Files` task.
    1.  Specify the path on the SFTP server in the variable and any filename
        pattern to scan for new files.
    1.  Change the filter expression to work for your use case using the SQL's
        `Where` clause syntax. You can use any of the fields from that List
        output in your filter criteria.
1.  In the `sftp-get-file` sub integration, configure the Connectors task.

    1.  In the `SFTP Connector Read File` task:
        1.  Change to your region / connection
        1.  Click Actions > Download
    1.  In the `Get File Details` task:
        1.  Change to your region / connection
        1.  Click Entities > ROOT > GET

1.  Test the integration

    The only file downloadable on the rebex public server is `readme.txt`. But
    if you are connected to a different server, try one of the other file names
    on that server

    1.  Only Text files are supported at this time. Binary files will fail to
        download.
    1.  If you examine the log files for the `sftp-poll-path-for-file`
        integration, you will see that it loops through all the files in the
        folder that you provided as input, and attempts to download each file.
        The contents of the file are made available to you in the `Contents`
        property of the `ConnectorOutputPayload`.
    1.  You can see the individual file processing in the `sftp-get-file` logs.
    1.  Click on any entry, shows you that it actually failed because it is a
        binary file type (EndResult is `false`).
    1.  Only the download of a text file succeeds and the file's content will be
        available in the `connectorOutputPayload` variable.

For more examples on how to perform various SFTP file operations, see
[Examples](https://cloud.google.com/integration-connectors/docs/connectors/sftp/configure#examples).
