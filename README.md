# RailsBackend
A Rails backend application system in the rails way

[![Code Climate](https://codeclimate.com/github/olvap/rails_backend.png)](https://codeclimate.com/github/olvap/rails_backend)

## Install

Run in the console

    gem install rails_backend --pre

Or add in yout gemfile

    gem 'rails_backend'

For the last version, rails 4

    gem 'rails_backend', git: 'git://github.com/olvap/rails_backend.git'
    
For rails 3

    gem 'rails_backend', git: 'git://github.com/olvap/rails_backend.git', branch: 'rails3'

Run the install generator

    rails g rails_backend:install

This will generate the application and assets files necesary for rails backend.


## Usage

Register a new resource for Rails Backend

    rails g rails_backend:register [resource]
    # i.e
    rails g rails_backend:register blogs

This asume you already have a model for this resource, like Blog

Then you should be able to see all the backend of the resource in /backend/resource

## Customize


### Customize resource views

Is you need some customization over the views, you can run this command

    rails g rails_backend:views [resource]
    # i.e
    rails g rails_backend:views blogs

It going to generate some views fiels under, views/backend/controller_name/


### Customize layout

Cooming soon

### Contribute

Cooming soon

### Licence

This project uses the AGPLv3 licence.
