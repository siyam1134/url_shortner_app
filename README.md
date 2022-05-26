# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

ruby version 2.7.1
rails version 6.1.5

step by step procedure to run the server

go to the application folder

1.yarn add package.json

2.bundle install

before moving to point number 3 ensure that the root password is same as your local or prod databse password

3.rails db:create

4. rails db:migrate

5. rails s

to run the unit test cases rspec

1. bundle exec ./spec/model/shorten_url_spec.rb - for model file

2. bundle exec ./spec/requests/url_shortens_spec.rb - for controller file
