# README

README/

Refer to seeds.rb to for default login and password


* Ruby version
 Use no later than ruby 2.3.3p222
 -Install ruby: railsinstaller.org
  Linux users should install node-js before attempting rails installation
 
*Rails version - 5.1.4
  -Install Rails: railsinstaller.org

Folder structure 
 * Important things to know:
  1. You should at least know the basics of Database design, Working with the command line, javascript, anf of course, Ruby and rails.
  2. JSON and SQL are good to know but not required
  3. All commands and proccedures in this documentation are CASE SENSITIVE.

 * Now lets get into it.
    Controllers: Controllers essentially handle the logic of the program, controller files usually have classes and methods defined within and controls a particular model(explained later), a has the convention "controllerName_controller.rb". These files can be found in /App/Controllers.

    Models: Models provide abstractions over our database tables so we dont have to interact with them directly. This provides a layer of security hence rails immune to sql_injection attacks.
    Instead we will interact with ActiveRecord, which is the class that provides the abstraction we need on top of our models. If we want more flexibilty with our queries we can decide write our own queries. Some of the models have custom queries in them.
    Models files usually have the format  "model_name.rb". They contain additional logic such as validation and regular expressions. They also contain any assocaitions one model may have with another. 

    Views: Views won't be dicussed in depth, since this is an API-only documentation and we dont have any views as a performance increase measure. Views contain html wrapped around in ruby logic, and are used to render pages to the user. Hence a view is the part of a rails-app that your users will actually interact with. We designed our front-end in ES7 optimized javascript, which runs on Chromes ultrafast V8 engine maintained by Google. 
    
    
Since the app will run various concurrent sessions at the same time, We needed a language that could handle all the requests at once without throttling. We settled on a Javascript only single paged app.





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
Refer to: ../db/seeds.rb for default admin login and password.
    Ths should later be changed.

The seeds.rb file contains seed data to initialize the API for development. Make sure to get rid of it in production.





* Services-API Operation (job queues, cache servers, search engines, etc.)

endPoints:
#run
rails routes




* Deployment instructions
API is best deployed to a VPS.
Here are some instructions:

Using Heroku as a free service

**REQUIREMENTS**
Basic knowledge in Git and GitHub
- Learn how here: 
Basic knowledge in SSH and Cloud VM's 
- Learn SSH: 
Linux/Bash/Putty Client CLI Tools





**Deployment Instructions**

Download and install Heroku Toolbelt. We are going to use the cli to deploy 
run:





* ...
