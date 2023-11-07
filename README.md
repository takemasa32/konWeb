# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


- 更新方法

```
rake db:migrate RAILS_ENV=development
rake assets:precompile RAILS_ENV=development
rake unicorn:stop && rake unicorn:start
```
rails g scaffold blogs title:string body:string category:string user:strings