# _Business_Lookup_

#### By _**Peter Karellas*_

## Description

API app that allows returns information about local businesses

## Functionality
*_Endpoints for GET (all and by id), POST, PUT and DELETE._*

*_A RANDOM endpoint that randomly returns a business name._*

*_A second custom endpoint that searches a specific name._*

*_Serialization of parameter (name, address, and description)_*

*_Randomized data with Faker._*

## Installation
------------
*_git clone https://github.com/pkarella/business_lookup.git_*
*_cd business_lookup_*

Install required gems:
*_bundle install_*

Start postgres:
*_postgress_*

Create databases:
*_rails db:create_*
*_rails db:migrate_*
*_rails db:seed_*

Start the webserver:
*_rails s_*

## Using this app

1. Open the postman app

* To see all of the business names descriptions and addresses.
  * Select 'GET' method and copy http://localhost:3000/lists


* To see a specific listed business by id  
  * Select 'GET' method and copy http://localhost:3000/lists/ followed by the id number associated with the list

* To delete a specific listed business by id  
  * Select 'DELETE' method and copy http://localhost:3000/lists/ followed by the id number associated with the list

* To update a specific business by id  
  * Select 'PATCH' method and copy http://localhost:3000/lists/ followed by the id number associated with the business then change the value in the body portion of postman under parameter.

* To see a specific business by name.
  * Select 'GET' method and copy http://localhost:3000/lists?name= followed by the name of business you want to see


* To see a random business
  * Select 'GET' method and copy http://localhost:3000/lists?random_list=

## Known Bugs

_NA_

## Technologies Used

_Ruby on Rails, HTML, CSS_

### License

*MIT*

Copyright (c) 2017 **_Peter Karellas_**
