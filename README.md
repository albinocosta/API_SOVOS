# API_SOVOS
API testing scripts for follow Swagger documentation: 
http://fakerestapi.azurewebsites.net/swagger/ui/index#!/Users/Users_Post

Follow equirements was considered to implement tests:

* System must not permit duplicate users (ID should be unique)
* New users should be able to register
* System should be able to retrieve registered users information
* An error should be displayed when trying to retrieve a user that was not yet registered (404).

*** The two requirements about new user creation are failing ***
*** Dev Team will be reported soon ***

# Setup

Scripts project was implemented in Ruby

To be able to run this project you will need:

1 - An ruby IDE. Eg.: VS Code 2 - Ruby 2.6.6p146 with dev kit 3 - If necessary, update the libraries needed to run the tests. Use bundle uninstall. Dependencies are described in gemfile (httparty/ rspec);

2- Environment is set up for homologation and for development it should be set up at rspec.yml file. Don't forget to provide the right url for this case in dev.yml file;

3 - Be sure your IDE have pluggins for Ruby. It's a good option take vscode-icons for better file previews.

# Runing the tests

Open the project at your IDE. >> Execute 'rspec' command line in project main folder (APITest_Sovos);

A folder containing html results page is created after scripts execution. Screenshots are taken at the final of every scenario.
