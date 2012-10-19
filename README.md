pholio-rails
============

Pholio - Photography Portfolio site in Rails

Installation
============
I highly recommend you do not install this yet. It's not finished.

With that said, here's an overview of the installation process:

For those familiar with Rails applications
------------
Depends on imagemagick. Then skip to step 2.

Step 1: Dependency installation
------------
* $ sudo apt-get install ruby1.9.3 imagemagick mysql-server {nginx|apache} (choose one)
* $ gem install passenger
  * follow instructions
* $ gem install bundler

Step 2: Application setup
------------
* $ cd pholio-rails/
* $ bundle install
  * Aaaand, wait.
* Setup database
  * Create config/database.yml file containing something similar to the following:

```yaml
defaults: &defaults
  adapter: mysql
  database: pholio_rails
  username: YOUR-USERNAME
  password: YOUR-PASSWORD
  host: localhost

development:
  <<: *defaults
test:
  <<: *defaults
production:
  <<: *defaults
```

* Create tables
  * $ bundle exec rake db:create db:migrate
License
=============
MIT - see LICENSE if you really want.

Note
=============

NB: This is not linked to any of the other photography portfolio apps called
'pholio'. I'm just crap at thinking of original names.
