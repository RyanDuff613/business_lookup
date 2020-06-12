# Business Finder API

#### Epicodus: Ruby: Week 6, Independent Project

#### Ryan Duff 

## Description
This project is an API for finding information on local businesses.


## Setup/Installation Requirements
Users will need to install Ruby, Rails, psql and Postgres.
[Click here](https://www.ruby-lang.org/en/documentation/installation/) for instructions on installing Ruby.
[Click here](https://dataschool.com/learn-sql/how-to-start-a-postgresql-server-on-mac-os-x/) for instructions on installing psql and Postgres.
After installing the above software, users will need to clone this project from my [github repository](https://github.com/RyanDuff613/business_lookup.git). Once cloned, use the command line to navigate to the project folder and install all necessary Ruby Gems with: 
* _$ bundle install_
In the command line, type the following commands which will create the necessary database and launch a local server sso that you can access the application in a browser window.
* _$ rake db:create 
* _$ rake db:migrate
* _$ rake db:test:prepare
* _$ rails s
Now open a web browser and enter localhost:3000 in the address bar to view the project.


## Specifications

| Behavior       | Input         | Output  |
| :--- |:---| :---|
||||
## User Stories Employed to Determine Behavior Driven Development Strategy

* As a user I want to 

## Technologies Used
* _Ruby_
* _Rails_
* _ActiveRecord_
* _Faker_
* _Rspec_
* _Pry_
* _Capybara_
* _Postgres_
* _Markdown_
* _git & gitHub_

## Known Bugs

If user enters a product cost with a "0" in the hundrenths position, the "0" is dropped from the cost. 
Ex. User Entered Cost:$2.30, Cost in Database: $2.3

Applicaation does not test for vilidity of user inputted email addresses and does not restrict for password strength.

Application limits certain actions to "Admins" but currently allows any user to create an Admin account.

### License

**The MIT license**

Copyright (c) 2020 **Ryan Duff**
