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

* Create tables
  * $ bundle exec rake db:create db:migrate
* Create apache/nginx passenger entry
 * Read the output of whatever command you ran. It tells you how.

Step 3: Configure app
---------------------
* $ vim config/settings.yml
  * Set the title and tagline for your pholio.
  * Set the disqus shortname. 
    * You must do this. 
    * I haven't branched on its presence yet.
    * You WILL HAVE DISQUS COMMENTS.
    * http://www.disqus.com
  * Create static pages
    * Each entry in static_pages reflects a single static page.
    * The static pages correspond to views in app/pages/<slug_name>.extension (.html.haml, .html.erb, .html.md (markdown) supported)
    * 'slug' is the url fragment too 
      * e.g creating a static_page with slug: contact will render app/pages/contact.html.md and be available at /contact
* $ touch tmp/restart.txt to restart the app with these changes

Step 4: Access admin
--------------------
* access http://yoursite/admin
* use default username 'admin@example.com', password 'password' to login
  * create a new user account
  * delete the default user account IF YOU DO NOT DO THIS I WILL LAUGH AT YOU

License
=============
MIT - see LICENSE if you really want.

Note
=============

NB: This is not linked to any of the other photography portfolio apps called
'pholio'. I'm just crap at thinking of original names.
