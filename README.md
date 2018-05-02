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

#output

                        #PrefixVerb       URI Pattern                                                          Controller#Action
        new_admin_user_session GET        /admin/login(.:format)                                               active_admin/devise/sessions#new
            admin_user_session POST       /admin/login(.:format)                                               active_admin/devise/sessions#create
    destroy_admin_user_session DELETE|GET /admin/logout(.:format)                                              active_admin/devise/sessions#destroy
       new_admin_user_password GET        /admin/password/new(.:format)                                        active_admin/devise/passwords#new
      edit_admin_user_password GET        /admin/password/edit(.:format)                                       active_admin/devise/passwords#edit
           admin_user_password PATCH      /admin/password(.:format)                                            active_admin/devise/passwords#update
                               PUT        /admin/password(.:format)                                            active_admin/devise/passwords#update
                               POST       /admin/password(.:format)                                            active_admin/devise/passwords#create
                    admin_root GET        /admin(.:format)                                                     admin/dashboard#index
batch_action_admin_admin_users POST       /admin/admin_users/batch_action(.:format)                            admin/admin_users#batch_action
             admin_admin_users GET        /admin/admin_users(.:format)                                         admin/admin_users#index
                               POST       /admin/admin_users(.:format)                                         admin/admin_users#create
          new_admin_admin_user GET        /admin/admin_users/new(.:format)                                     admin/admin_users#new
         edit_admin_admin_user GET        /admin/admin_users/:id/edit(.:format)                                admin/admin_users#edit
              admin_admin_user GET        /admin/admin_users/:id(.:format)                                     admin/admin_users#show
                               PATCH      /admin/admin_users/:id(.:format)                                     admin/admin_users#update
                               PUT        /admin/admin_users/:id(.:format)                                     admin/admin_users#update
                               DELETE     /admin/admin_users/:id(.:format)                                     admin/admin_users#destroy
 batch_action_admin_classrooms POST       /admin/classrooms/batch_action(.:format)                             admin/classrooms#batch_action
              admin_classrooms GET        /admin/classrooms(.:format)                                          admin/classrooms#index
                               POST       /admin/classrooms(.:format)                                          admin/classrooms#create
           new_admin_classroom GET        /admin/classrooms/new(.:format)                                      admin/classrooms#new
          edit_admin_classroom GET        /admin/classrooms/:id/edit(.:format)                                 admin/classrooms#edit
               admin_classroom GET        /admin/classrooms/:id(.:format)                                      admin/classrooms#show
                               PATCH      /admin/classrooms/:id(.:format)                                      admin/classrooms#update
                               PUT        /admin/classrooms/:id(.:format)                                      admin/classrooms#update
                               DELETE     /admin/classrooms/:id(.:format)                                      admin/classrooms#destroy
    batch_action_admin_courses POST       /admin/courses/batch_action(.:format)                                admin/courses#batch_action
                 admin_courses GET        /admin/courses(.:format)                                             admin/courses#index
                               POST       /admin/courses(.:format)                                             admin/courses#create
              new_admin_course GET        /admin/courses/new(.:format)                                         admin/courses#new
             edit_admin_course GET        /admin/courses/:id/edit(.:format)                                    admin/courses#edit
                  admin_course GET        /admin/courses/:id(.:format)                                         admin/courses#show
                               PATCH      /admin/courses/:id(.:format)                                         admin/courses#update
                               PUT        /admin/courses/:id(.:format)                                         admin/courses#update
                               DELETE     /admin/courses/:id(.:format)                                         admin/courses#destroy
               admin_dashboard GET        /admin/dashboard(.:format)                                           admin/dashboard#index
batch_action_admin_year_groups POST       /admin/year_groups/batch_action(.:format)                            admin/year_groups#batch_action
             admin_year_groups GET        /admin/year_groups(.:format)                                         admin/year_groups#index
                               POST       /admin/year_groups(.:format)                                         admin/year_groups#create
          new_admin_year_group GET        /admin/year_groups/new(.:format)                                     admin/year_groups#new
         edit_admin_year_group GET        /admin/year_groups/:id/edit(.:format)                                admin/year_groups#edit
              admin_year_group GET        /admin/year_groups/:id(.:format)                                     admin/year_groups#show
                               PATCH      /admin/year_groups/:id(.:format)                                     admin/year_groups#update
                               PUT        /admin/year_groups/:id(.:format)                                     admin/year_groups#update
                               DELETE     /admin/year_groups/:id(.:format)                                     admin/year_groups#destroy
    batch_action_admin_periods POST       /admin/periods/batch_action(.:format)                                admin/periods#batch_action
                 admin_periods GET        /admin/periods(.:format)                                             admin/periods#index
                               POST       /admin/periods(.:format)                                             admin/periods#create
              new_admin_period GET        /admin/periods/new(.:format)                                         admin/periods#new
             edit_admin_period GET        /admin/periods/:id/edit(.:format)                                    admin/periods#edit
                  admin_period GET        /admin/periods/:id(.:format)                                         admin/periods#show
                               PATCH      /admin/periods/:id(.:format)                                         admin/periods#update
                               PUT        /admin/periods/:id(.:format)                                         admin/periods#update
                               DELETE     /admin/periods/:id(.:format)                                         admin/periods#destroy
  batch_action_admin_semesters POST       /admin/semesters/batch_action(.:format)                              admin/semesters#batch_action
               admin_semesters GET        /admin/semesters(.:format)                                           admin/semesters#index
                               POST       /admin/semesters(.:format)                                           admin/semesters#create
            new_admin_semester GET        /admin/semesters/new(.:format)                                       admin/semesters#new
           edit_admin_semester GET        /admin/semesters/:id/edit(.:format)                                  admin/semesters#edit
                admin_semester GET        /admin/semesters/:id(.:format)                                       admin/semesters#show
                               PATCH      /admin/semesters/:id(.:format)                                       admin/semesters#update
                               PUT        /admin/semesters/:id(.:format)                                       admin/semesters#update
                               DELETE     /admin/semesters/:id(.:format)                                       admin/semesters#destroy
   batch_action_admin_students POST       /admin/students/batch_action(.:format)                               admin/students#batch_action
                admin_students GET        /admin/students(.:format)                                            admin/students#index
                               POST       /admin/students(.:format)                                            admin/students#create
             new_admin_student GET        /admin/students/new(.:format)                                        admin/students#new
            edit_admin_student GET        /admin/students/:id/edit(.:format)                                   admin/students#edit
                 admin_student GET        /admin/students/:id(.:format)                                        admin/students#show
                               PATCH      /admin/students/:id(.:format)                                        admin/students#update
                               PUT        /admin/students/:id(.:format)                                        admin/students#update
                               DELETE     /admin/students/:id(.:format)                                        admin/students#destroy
     batch_action_admin_todays POST       /admin/todays/batch_action(.:format)                                 admin/todays#batch_action
                  admin_todays GET        /admin/todays(.:format)                                              admin/todays#index
                               POST       /admin/todays(.:format)                                              admin/todays#create
               new_admin_today GET        /admin/todays/new(.:format)                                          admin/todays#new
              edit_admin_today GET        /admin/todays/:id/edit(.:format)                                     admin/todays#edit
                   admin_today GET        /admin/todays/:id(.:format)                                          admin/todays#show
                               PATCH      /admin/todays/:id(.:format)                                          admin/todays#update
                               PUT        /admin/todays/:id(.:format)                                          admin/todays#update
                               DELETE     /admin/todays/:id(.:format)                                          admin/todays#destroy
                admin_comments GET        /admin/comments(.:format)                                            admin/comments#index
                               POST       /admin/comments(.:format)                                            admin/comments#create
                 admin_comment GET        /admin/comments/:id(.:format)                                        admin/comments#show
                               DELETE     /admin/comments/:id(.:format)                                        admin/comments#destroy
             api_v1_auth_login POST       /api/v1/auth/login(.:format)                                         api/v1/users#login
                   api_v1_test GET        /api/v1/test(.:format)                                               api/v1/users#test
              api_v1_semesters GET        /api/v1/semesters(.:format)                                          api/v1/semesters#index
                               POST       /api/v1/semesters(.:format)                                          api/v1/semesters#create
           new_api_v1_semester GET        /api/v1/semesters/new(.:format)                                      api/v1/semesters#new
          edit_api_v1_semester GET        /api/v1/semesters/:id/edit(.:format)                                 api/v1/semesters#edit
               api_v1_semester GET        /api/v1/semesters/:id(.:format)                                      api/v1/semesters#show
                               PATCH      /api/v1/semesters/:id(.:format)                                      api/v1/semesters#update
                               PUT        /api/v1/semesters/:id(.:format)                                      api/v1/semesters#update
                               DELETE     /api/v1/semesters/:id(.:format)                                      api/v1/semesters#destroy
             api_v1_classrooms GET        /api/v1/classrooms(.:format)                                         api/v1/classrooms#index
                               POST       /api/v1/classrooms(.:format)                                         api/v1/classrooms#create
          new_api_v1_classroom GET        /api/v1/classrooms/new(.:format)                                     api/v1/classrooms#new
         edit_api_v1_classroom GET        /api/v1/classrooms/:id/edit(.:format)                                api/v1/classrooms#edit
              api_v1_classroom GET        /api/v1/classrooms/:id(.:format)                                     api/v1/classrooms#show
                               PATCH      /api/v1/classrooms/:id(.:format)                                     api/v1/classrooms#update
                               PUT        /api/v1/classrooms/:id(.:format)                                     api/v1/classrooms#update
                               DELETE     /api/v1/classrooms/:id(.:format)                                     api/v1/classrooms#destroy
                api_v1_courses GET        /api/v1/courses(.:format)                                            api/v1/courses#index
                               POST       /api/v1/courses(.:format)                                            api/v1/courses#create
             new_api_v1_course GET        /api/v1/courses/new(.:format)                                        api/v1/courses#new
            edit_api_v1_course GET        /api/v1/courses/:id/edit(.:format)                                   api/v1/courses#edit
                 api_v1_course GET        /api/v1/courses/:id(.:format)                                        api/v1/courses#show
                               PATCH      /api/v1/courses/:id(.:format)                                        api/v1/courses#update
                               PUT        /api/v1/courses/:id(.:format)                                        api/v1/courses#update
                               DELETE     /api/v1/courses/:id(.:format)                                        api/v1/courses#destroy
                 api_v1_states GET        /api/v1/states(.:format)                                             api/v1/states#index
                               POST       /api/v1/states(.:format)                                             api/v1/states#create
              new_api_v1_state GET        /api/v1/states/new(.:format)                                         api/v1/states#new
             edit_api_v1_state GET        /api/v1/states/:id/edit(.:format)                                    api/v1/states#edit
                  api_v1_state GET        /api/v1/states/:id(.:format)                                         api/v1/states#show
                               PATCH      /api/v1/states/:id(.:format)                                         api/v1/states#update
                               PUT        /api/v1/states/:id(.:format)                                         api/v1/states#update
                               DELETE     /api/v1/states/:id(.:format)                                         api/v1/states#destroy
           api_v1_level_todays GET        /api/v1/levels/:level_id/todays(.:format)                            api/v1/todays#index
                               POST       /api/v1/levels/:level_id/todays(.:format)                            api/v1/todays#create
        new_api_v1_level_today GET        /api/v1/levels/:level_id/todays/new(.:format)                        api/v1/todays#new
       edit_api_v1_level_today GET        /api/v1/levels/:level_id/todays/:id/edit(.:format)                   api/v1/todays#edit
            api_v1_level_today GET        /api/v1/levels/:level_id/todays/:id(.:format)                        api/v1/todays#show
                               PATCH      /api/v1/levels/:level_id/todays/:id(.:format)                        api/v1/todays#update
                               PUT        /api/v1/levels/:level_id/todays/:id(.:format)                        api/v1/todays#update
                               DELETE     /api/v1/levels/:level_id/todays/:id(.:format)                        api/v1/todays#destroy
          api_v1_level_courses GET        /api/v1/levels/:level_id/courses(.:format)                           api/v1/courses#index
                               POST       /api/v1/levels/:level_id/courses(.:format)                           api/v1/courses#create
       new_api_v1_level_course GET        /api/v1/levels/:level_id/courses/new(.:format)                       api/v1/courses#new
      edit_api_v1_level_course GET        /api/v1/levels/:level_id/courses/:id/edit(.:format)                  api/v1/courses#edit
           api_v1_level_course GET        /api/v1/levels/:level_id/courses/:id(.:format)                       api/v1/courses#show
                               PATCH      /api/v1/levels/:level_id/courses/:id(.:format)                       api/v1/courses#update
                               PUT        /api/v1/levels/:level_id/courses/:id(.:format)                       api/v1/courses#update
                               DELETE     /api/v1/levels/:level_id/courses/:id(.:format)                       api/v1/courses#destroy
    api_v1_level_today_courses GET        /api/v1/levels/:level_id/todays/:today_id/courses(.:format)          api/v1/courses#index
                               POST       /api/v1/levels/:level_id/todays/:today_id/courses(.:format)          api/v1/courses#create
 new_api_v1_level_today_course GET        /api/v1/levels/:level_id/todays/:today_id/courses/new(.:format)      api/v1/courses#new
edit_api_v1_level_today_course GET        /api/v1/levels/:level_id/todays/:today_id/courses/:id/edit(.:format) api/v1/courses#edit
     api_v1_level_today_course GET        /api/v1/levels/:level_id/todays/:today_id/courses/:id(.:format)      api/v1/courses#show
                               PATCH      /api/v1/levels/:level_id/todays/:today_id/courses/:id(.:format)      api/v1/courses#update
                               PUT        /api/v1/levels/:level_id/todays/:today_id/courses/:id(.:format)      api/v1/courses#update
                               DELETE     /api/v1/levels/:level_id/todays/:today_id/courses/:id(.:format)      api/v1/courses#destroy
                               GET        /api/v1/levels/:level_id/todays(.:format)                            api/v1/todays#index
                               POST       /api/v1/levels/:level_id/todays(.:format)                            api/v1/todays#create
                               GET        /api/v1/levels/:level_id/todays/new(.:format)                        api/v1/todays#new
                               GET        /api/v1/levels/:level_id/todays/:id/edit(.:format)                   api/v1/todays#edit
                               GET        /api/v1/levels/:level_id/todays/:id(.:format)                        api/v1/todays#show
                               PATCH      /api/v1/levels/:level_id/todays/:id(.:format)                        api/v1/todays#update
                               PUT        /api/v1/levels/:level_id/todays/:id(.:format)                        api/v1/todays#update
                               DELETE     /api/v1/levels/:level_id/todays/:id(.:format)                        api/v1/todays#destroy
                 api_v1_levels GET        /api/v1/levels(.:format)                                             api/v1/levels#index
                               POST       /api/v1/levels(.:format)                                             api/v1/levels#create
              new_api_v1_level GET        /api/v1/levels/new(.:format)                                         api/v1/levels#new
             edit_api_v1_level GET        /api/v1/levels/:id/edit(.:format)                                    api/v1/levels#edit
                  api_v1_level GET        /api/v1/levels/:id(.:format)                                         api/v1/levels#show
                               PATCH      /api/v1/levels/:id(.:format)                                         api/v1/levels#update
                               PUT        /api/v1/levels/:id(.:format)                                         api/v1/levels#update
                               DELETE     /api/v1/levels/:id(.:format)                                         api/v1/levels#destroy
                api_v1_periods GET        /api/v1/periods(.:format)                                            api/v1/periods#index
                               POST       /api/v1/periods(.:format)                                            api/v1/periods#create
             new_api_v1_period GET        /api/v1/periods/new(.:format)                                        api/v1/periods#new
            edit_api_v1_period GET        /api/v1/periods/:id/edit(.:format)                                   api/v1/periods#edit
                 api_v1_period GET        /api/v1/periods/:id(.:format)                                        api/v1/periods#show
                               PATCH      /api/v1/periods/:id(.:format)                                        api/v1/periods#update
                               PUT        /api/v1/periods/:id(.:format)                                        api/v1/periods#update
                               DELETE     /api/v1/periods/:id(.:format)                                        api/v1/periods#destroy
                               GET        /api/v1/semesters(.:format)                                          api/v1/semesters#index
                               POST       /api/v1/semesters(.:format)                                          api/v1/semesters#create
                               GET        /api/v1/semesters/new(.:format)                                      api/v1/semesters#new
                               GET        /api/v1/semesters/:id/edit(.:format)                                 api/v1/semesters#edit
                               GET        /api/v1/semesters/:id(.:format)                                      api/v1/semesters#show
                               PATCH      /api/v1/semesters/:id(.:format)                                      api/v1/semesters#update
                               PUT        /api/v1/semesters/:id(.:format)                                      api/v1/semesters#update
                               DELETE     /api/v1/semesters/:id(.:format)                                      api/v1/semesters#destroy
  api_v1_student_auth_register POST       /api/v1/students/:student_id/auth/register(.:format)                 api/v1/users#register
      api_v1_student_classyncs GET        /api/v1/students/:student_id/classyncs(.:format)                     api/v1/classyncs#index
                               POST       /api/v1/students/:student_id/classyncs(.:format)                     api/v1/classyncs#create
   new_api_v1_student_classync GET        /api/v1/students/:student_id/classyncs/new(.:format)                 api/v1/classyncs#new
  edit_api_v1_student_classync GET        /api/v1/students/:student_id/classyncs/:id/edit(.:format)            api/v1/classyncs#edit
       api_v1_student_classync GET        /api/v1/students/:student_id/classyncs/:id(.:format)                 api/v1/classyncs#show
                               PATCH      /api/v1/students/:student_id/classyncs/:id(.:format)                 api/v1/classyncs#update
                               PUT        /api/v1/students/:student_id/classyncs/:id(.:format)                 api/v1/classyncs#update
                               DELETE     /api/v1/students/:student_id/classyncs/:id(.:format)                 api/v1/classyncs#destroy
    api_v1_student_attendances GET        /api/v1/students/:student_id/attendances(.:format)                   api/v1/attendances#index
                               POST       /api/v1/students/:student_id/attendances(.:format)                   api/v1/attendances#create
 new_api_v1_student_attendance GET        /api/v1/students/:student_id/attendances/new(.:format)               api/v1/attendances#new
edit_api_v1_student_attendance GET        /api/v1/students/:student_id/attendances/:id/edit(.:format)          api/v1/attendances#edit
     api_v1_student_attendance GET        /api/v1/students/:student_id/attendances/:id(.:format)               api/v1/attendances#show
                               PATCH      /api/v1/students/:student_id/attendances/:id(.:format)               api/v1/attendances#update
                               PUT        /api/v1/students/:student_id/attendances/:id(.:format)               api/v1/attendances#update
                               DELETE     /api/v1/students/:student_id/attendances/:id(.:format)               api/v1/attendances#destroy
               api_v1_students GET        /api/v1/students(.:format)                                           api/v1/students#index
                               POST       /api/v1/students(.:format)                                           api/v1/students#create
            new_api_v1_student GET        /api/v1/students/new(.:format)                                       api/v1/students#new
           edit_api_v1_student GET        /api/v1/students/:id/edit(.:format)                                  api/v1/students#edit
                api_v1_student GET        /api/v1/students/:id(.:format)                                       api/v1/students#show
                               PATCH      /api/v1/students/:id(.:format)                                       api/v1/students#update
                               PUT        /api/v1/students/:id(.:format)                                       api/v1/students#update
                               DELETE     /api/v1/students/:id(.:format)                                       api/v1/students#destroy




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
