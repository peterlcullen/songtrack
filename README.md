## Local installation

First, copy the repo over to your local drive
    
    $ git clone git@github.com:peterlcullen/songtrack.git
    $ cd songtrack
  

or fork it and clone off of that

Next, install the gems
    
    $ bundle install

Prep the database
    
    $ rake db:migrate

Fire up the server and enjoy
    
    $ rails s