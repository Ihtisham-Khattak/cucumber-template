Feature: Login page

    Feature Login page will work depending on the user credentials.

    Background:
        Given A web browser is at the Volangua login page
    Scenario: Success Login
        When A user enters the username "ihtishamkhattak9504+ThomasT@gmail.com", the password "Thomas1122", and clicks on the login button
        Then the url will contains the inventory subdirectory
    Scenario: Blocked Login
        When A user enters the username "ihtishamkhattak9504+ThomasT@gmail.com", the password "secret_sauce", and clicks on the login button
        Then The error message "Email/Password is incorrect \n ×\n" is displayed
    Scenario: Incorrect Email Login
        When A user provides incorrect credentials, and clicks on the login button
            | username | password     |
            | ihtishamkhattak9504+Thomas@gmail.com | Thomas1122 |
        Then The error message "Email/Password is incorrect \n ×\n" is displayed
    Scenario: Incorrect Password Login
        When A user provides incorrect credentials, and clicks on the login button
            | username      | password     |
            | ihtishamkhattak9504+ThomasT@gmail.com | Thomas1212 |
        Then The error message "Email/Password is incorrect \n ×\n" is displayed