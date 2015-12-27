# Jobs that MakeSense !

[![Stories in Ready](https://badge.waffle.io/Em-AK/makesense_jobs.png?label=ready&title=Ready)](https://waffle.io/Em-AK/makesense_jobs)
[![Join the chat at https://gitter.im/Em-AK/makesense_jobs](https://badges.gitter.im/Em-AK/makesense_jobs.svg)](https://gitter.im/Em-AK/makesense_jobs?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

[![Code Climate](https://codeclimate.com/github/Em-AK/makesense_jobs/badges/gpa.svg)](https://codeclimate.com/github/Em-AK/makesense_jobs)
[![security](https://hakiri.io/github/Em-AK/makesense_jobs/master.svg)](https://hakiri.io/github/Em-AK/makesense_jobs/master)

## Why

Jobs that MakeSense wants to :

* Give the talented changemakers out there the job opportunities they deserve
* Help organisations who do care about our Causes to find the talents they need
* End the era of bullshit jobs

Read more on the 'About' page (To be written - see issue #14)

## Setup development environnement

If you worked with rails applications before, it should be easy for you. If you are
stuck at any point in the process please [come to the chatroom](https://gitter.im/Em-AK/makesense_jobs?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge) to get some help

### Dependencies

Your machine must have the following installed :

* postgresql
* nodejs (for assets compilation)
* ImageMagick
* ruby version 2.2.3
* bundler: `gem install bundler`

### Install gem dependencies

1. Clone the project from github
2. cd into the `makesense_jobs` directory
3. run `bundle install`

It can take a few minutes to install all the gems if you do it for the first time.

### Set environnment variables

Make a copy of `dotenv` into `.env`. You can safely store your credentials in it
as git is configured to keep this file out of version control (ie. your API keys
won't be commited and published on github)

Learn more about [dotenv](https://github.com/bkeepers/dotenv)

### Create postgresql databases

Make a copy of `config/database.yml.sample` into `config/database.yml` and customize
it to your taste.

Create a postgresql user and databases according to your `config/database.yml`.
The postgresql documentation for your distribution / OS might be helpfull.

Once your databases exist you can load the schema and some seed data:

```
rake db:setup
```

### Ignite

Now you should be ready to launch the local server with `rails server`, and see
the app running on <http://localhost:3000>

## Deploy to production-like environment

The app is ready to run smoothly on dokku or heroku

1. configure postgresql database and set `DATABASE_URL` into the env
2. configure environment variables
3. push on the host repo to deploy via the buildpacks

## How to contribute

1. Fork the [upstream repo](https://github.com/Em-AK/makesense_jobs)
2. Clone your fork locally
3. Grab a ticket [in the issues](https://waffle.io/Em-AK/makesense_jobs) on waffle
or [ask in the
chatroom](https://gitter.im/Em-AK/makesense_jobs?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge) to find something fun to do
4. Write tests and code in a [feature
   branch](https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow)
5. Make your [pull request against the upstream master
   branch](https://github.com/Em-AK/makesense_jobs/pull/new/master)
6. Get reviewed and iterate over comments and suggestions until merged
7. Grab a drink and celebrate !

## License

Copyright Emilien Ah-Kiem - The code is free software distributed under the [GNU
AGPLv3](https://github.com/Em-AK/makesense_jobs/blob/master/LICENSE),
understand [what you can do with it](http://choosealicense.com/licenses/agpl-3.0/)!

