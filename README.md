# README

```
shimadaikeion.com
```
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

- 環境の切り替え
```
export RAILS_ENV=development
export RAILS_ENV=production
```


- 更新方法

Dev
```
rake db:migrate RAILS_ENV=development
rake assets:precompile RAILS_ENV=development
rake unicorn:stop && rake unicorn:start
```

Production
```
rake db:migrate RAILS_ENV=production
rake assets:precompile RAILS_ENV=production
rake unicorn:stop && rake unicorn:start
```

- 行ったmigration
rails g scaffold blogs title:string body:string category:string user:strings



参考
実行環境系
https://qiita.com/Shuhei_Nakada/items/05621028ff5aa78e8ad8

画像系
https://qiita.com/mmaumtjgj/items/509eed8e52ae53c4b41a