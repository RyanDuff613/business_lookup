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

| Method       | Endpoint | Result |
| :--- |:---| :---|
|GET| localhost:3000/| List of all businesse in the database|
|GET | localhost:3000/businesses| List of all businesse in the database|
|GET | localhost:3000/businesses/id| All information related to business of a given ID|
|GET | http://localhost:3000/businesses/search/?name=Hotlips| All information related to "Hotlips"|
|GET | http://localhost:3000/businesses/search/?business_type=Kids| All businesses related to "Kids"|
|GET|http://localhost:3000/businesses/random|Listing for a random business in the database|
|POST|http://localhost:3000/businesses/?name=hotlips&business_type=pizza&website=www.hotlipspizza.com&phone=444.444.4444&address=234 ne oerjo|Record for Hotlips is added to the database|
|PUT/PATCH|http://localhost:3000/businesses/38?phone=777.777.7777|Update the information stored for a given business|
|DELETE|http://localhost:3000/businesses/38|Delete the entire record for a given business|



## User Stories Employed to Determine Behavior Driven Development Strategy

* As a user I want to be able to see a list of businesses that includes the business name, website, phone number, address and business type.
* As a user I want to be able to search for a business by name.
* As a user I want to be able to search for all businesses by business type.
* As a user I want to be able to recieve a the information of a random business
* As a user I want to be able to add a business or delete an existing business
* As a user I want to be able to update information for an existing business.


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


### License

**The MIT license**

Copyright (c) 2020 **Ryan Duff**
