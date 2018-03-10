# mpcs52553-final

## Live deployment URL: https://stark-cliffs-97330.herokuapp.com/concerts

## Intent:
This website used for searching and sharing the latest concerts information. Guest users can create their own account to become members such that they can browse singer information for a concerts. Also members have the authorization on some operations such as publish, delete or edit concert information.

## Project snalysis:

1) Three models are created, namely Concert, User and Singer.

2) Three RESTful resources, each with seven routes corresponding to a model above.

3) The login/logout function (user authentication and user authorization) have not been implemented and some functions will be added in final project.

## How to use
1) Download a ZIP of this repository. Unzip the contents.

2) In your Terminal or Command Prompt, cd to the application's root directory.

3) bundle install

4) rails db:migrate db:seed

5) rails server. Puma should start up on port 3000.

6) Browse to localhost:3000.
