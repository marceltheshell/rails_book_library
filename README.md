# README

Hello there!  This is a quick POC exercise to build a book library management system in Rails 6.  The Ruby version used was v2.6.3.  The database is postgres.

Instructions to get started:

1. Download and start postgres on your machine.  On mac the terminal command is `pg_ctl -D /usr/local/var/postgres start`

2. Clone the repository, cd into the root directory and run
`rake db:create db:migrate db:seed`.  This will create a development and test DB in Postgres and seed the db with data from the seeds.rb file

3. Run the server locall with the command `rails s`

4. After that you should be off to the races!
