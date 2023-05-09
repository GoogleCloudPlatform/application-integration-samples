# Error Handling - Test for Task Error

**Summary:** We’ve created a sample integration that creates a mapping error, so
that we can show how to test for an Error after any task. The mapping condition
will try to retrieve the third element of a string array, and the default test
input only has 2 elements. This will cause an error. By creating a local
variable called ErrorMessage, we can then use the Edge conditions to test to see
if the ErrorMessage exists (has data in it from the Error), or whether it
remains empty (success).

## How to use the sample integration

The Error Handling sample here in GitHub is an example of how this is done.

1. Clone the repo 
```sh
https://github.com/GoogleCloudPlatform/application-integration-samples.git
```
1. Navigate to the `catch-task-error` directory
```sh
cd src/catch-task-error
```
1.  Create a new integration (you can call it ErrorHandlingSample or whatever
    you want)
1.  Use the **Upload** button on the main ribbon at the top of the canvas to
    import the `catch-task-error.json` file. Select **Upload**.
1.  Select the `catch-task-erro.json` file from your local drive and click
    **Open**.
1.  Enter your email address in the two **Send Email** tasks to test it.

**To TEST:** The Default input variable will cause it to have an error and
follow that route. Just click the **TEST** button at the top right of your
screen, and then click **Test integration**.

Test again with a successful mapping task. If you add a digit by typing **3**
(or choose any number) to the test input, it will go to the success route. You
should receive an email with an indication of success, and it will include the
third element in the email body.

## How to configure from scratch

Here are the instructions for how to replicate this sample.

1.  For the task that you want to test for the error, set the **Retry on
    Failure** setting to **Ignore** for the **When integration is run
    synchronously** option.

    This tells the integration to continue running even if there was an error.
    Otherwise, it will halt execution and put the integration into a Failure
    state.

1.  Create a variable in your integration called **ErrorMessage** and leave the
    definition and default value empty.

    **Note:** If you don't create the variable, the edge condition will not
    work.

1.  On the error edge, add a condition by clicking the line between your tasks.
    You can check for this condition to see if there is an error:
    <code>exists($ErrorMessage$)</code>

1.  To route to the successful branch, use this condition on the success edge:
    <code>NOT exists($ErrorMessage$)</code>

1.  Click the circle on the bottom of the Data Mapping task and make sure **Run
    all match** is selected.
