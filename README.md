# Statusbot::Workers [![Build Status](https://travis-ci.org/ejhayes/statusbot-workers.png?branch=master)](https://travis-ci.org/ejhayes/statusbot-workers) [![Code Climate](https://codeclimate.com/github/ejhayes/statusbot-workers/badges/gpa.svg)](https://codeclimate.com/github/ejhayes/statusbot-workers) [![Test Coverage](https://codeclimate.com/github/ejhayes/statusbot-workers/badges/coverage.svg)](https://codeclimate.com/github/ejhayes/statusbot-workers) [![Dependency Status](https://gemnasium.com/ejhayes/statusbot-workers.svg)](https://gemnasium.com/ejhayes/statusbot-workers)

Contains the worker processes used by statusbot.me.

## Installation

Add this line to your application's Gemfile:

    gem 'statusbot-workers'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install statusbot-workers

## Generating the database

This gem uses models from `statusbot-api` gem, so you'll need to run the migrations in order to get everything running.  For development work, this gem is configured to use sqlite3.

    bundle exec statusbot-models db:migrate

## Usage

To get the workers up and running simply run the worker binary installed with this gem.

    RAILS_ENV=development bundle exec statusbot-workers

NOTE: If this is runing in production mode, it would be best to keep the process alive with upstart, supervisor, god, or one of the many fine tools out there.

## Contributing

1. Fork it ( https://github.com/ejhayes/statusbot-workers/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
