# README

README/

Refer to seeds.rb to for default login and password


* Ruby version
 Use no later than ruby 2.3.3p222
 -Install ruby:
 
*Rails version - 5.1.4
  -Install Rails: 


* System dependencies
XAMPP Control Panel/Database Server
All other system dependencies are available in the Gemfile. ../Gemfile

* Configuration
To run API in development mode on windows, the following configuration has to be made
-Install and configure XAMPP suite from Apachefriends.org
-Navigate to /phpmyadmin to create database user and database, allow permissions and then edit database.yml file to reflect these changes accordingly.

Breakdown of database.yml
  adapter: The database adapter you want to use eg: mysql2, postgresql
  encoding: utf8
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: Database Username
  password: Database Passowrd
  host: Database Host

* Database creation
Database can be customized to fit any provider. MySQL, Postgres, etc through the ../config/database.yml
    You can specify database, password and required port in this file
    In production the host of the database should be made to point at the actual host of the database instead of localhost.
    If you knnow your way around the rails console, running 'rails db:create' will take care of database creation and initialization.

* Database initialization

To initialize database:
    run:
    rails db:create
    rails db:migrate
    rails db:seed

* How to run the test/development suite

Start the rails server: 
rails s

Navigate to /admin/login
Refer to: ../db/seeds.rb for admin login and password

The seeds.rb file contains seed data to initialize the API for development. Make sure to get rid of it in production.





* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
API is best deployed to a VPS.
Here are some instructions:

**REQUIREMENTS**
Basic knowledge in Git and GitHub
- Learn how here: 
Basic knowledge in SSH and Cloud VM's 
- Learn SSH: 
Linux/Bash/Putty Client CLI Tools

**Deployment Instructions**




* ...
