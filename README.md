[![Version     ](https://img.shields.io/gem/v/rails_backend.svg)](https://rubygems.org/gems/rails_backend)
[![Dependencies](https://img.shields.io/gemnasium/bluelemons/rails_backend.svg)](https://gemnasium.com/bluelemons/rails_backend)
[![Code Climate](https://img.shields.io/codeclimate/github/bluelemons/rails_backend.svg)](https://codeclimate.com/github/bluelemons/rails_backend)
[![Build Status](https://img.shields.io/travis/bluelemons/rails_backend/master.svg)](https://travis-ci.org/bluelemons/rails_backend)
[![Coverage    ](https://img.shields.io/codeclimate/coverage/github/bluelemons/rails_backend.svg)](https://codeclimate.com/github/bluelemons/rails_backend)
[![License     ](https://img.shields.io/badge/license-AGPL-663266.svg)](https://gnu.org/licenses/agpl)


# RailsBackend

A Rails backend application system the rails way.

## Install

Run in the console

    gem install rails_backend --pre

Or add in yout gemfile

    gem 'rails_backend'

For the last version, rails 4

    gem 'rails_backend', github: 'bluelemons/rails_backend'

For rails 3

    gem 'rails_backend', git: 'git://github.com/olvap/rails_backend.git', branch: 'rails3'

Run the install generator

    rails g rails_backend:install

This will generate the application and asset files necesary for rails backend.


## Usage

Register a new resource for Rails Backend

    rails g rails_backend:register [resource]
    # i.e
    rails g rails_backend:register blogs

This will asume you already have a model for this resource, like Blog

Then you should be able to see all the backend of the resource in /backend/resource

## Customize


### Customize resource views

Is you need some customization over the views, you can run this command

    rails g rails_backend:views [resource]
    # i.e
    rails g rails_backend:views blogs

It's going to generate some view files under, views/backend/controller_name/


### Customize layout

Cooming soon

### Contribute

Cooming soon

### Licence

This project uses the AGPLv3 licence.
