Overview
Using Sinatra, create a user signin/signup and authenticate signed in users before displaying information. Download the provided Sinatra: Authentication Skeleton which contains a shell of database, views and controllers.

Core
Demonstrates you can implement user login and authentication.

Objectives
Modify the skeleton code to achieve the following functionality:

A user can SignUp for a new account with an email and password.
User passwords are stored encrypted in the password-hash field. You may implement this yourself or use the bcyrpt gem.
An existing user can SignIn
If a user is not signed in, they only see a welcome message on the home page.
If a user is signed in, they can see all users on the home page.
A user can SignOut using the provided delete route which is invoked via AJAX.
A helper method current_user returns the current signed in user and is used to display appropriate SignIn / SignOut portions of the view. (This logic is already implemented in the view - you just need to finish the helper method).
You Will Know You Are Done When:
You can SignIn, SignUp and SignOut.
Your code is clean and well factored.
Stretch (OPTIONAL)
Demonstrate model validation, error messages, and user access levels.

Objectives
Add validation to the user model including password length and appropriately formated email.
Display appropriate error messages to the user for invalid data.
Add a field to store user access level (Admin / Student) and limit functionality to different users leves. (ie an Admin can edit users but a Student can only see other users).
You Will Know You Are Done When:
The above functionality is implemented with clean and efficient code.