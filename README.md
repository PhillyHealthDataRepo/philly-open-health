Mission Statement
=============
Philly Open Health increases access to and availability of public health data for Philadelphia and surrounding counties. There is a huge amount of publicly-available population health data available for the greater Philadelphia area, but it isn't technically "open data". While some of the data on Philly Open Health will be open (machine-readable) data, such as population demographics, other data will be sourced from PDFs, siloed databases, and filtered federal data sets. The combination of data sources and types will provide a more comprehensive look at population health in the greater Philly area, even though open data in the public health arena is limited.

The jumping-off point for Philly Open Health is the [Office of HIV Planning (OHP)] (http://www.hivphilly.org/)'s annual epidemiologic profile (or "epi" profile), which covers Philadelphia and eight surrounding counties in two states. This document includes over 200 tables and 100 figures on everything from race/ethnicity to drug use to poverty to HIV/AIDS. This document has always been designed for print, which means that limited data are included for presentation. OHP would like to provide the public with the data used in developing the epi profile in one centralized location.

Getting Started with Development!
======

Please take a look at the requirements_notes.md in this directory for an overview of our 1.0-release feature goals.

You can view the first batch of files on Dropbox [here](http://bit.ly/1KzEXOs). Metadata for these files is being compiled in a Google Sheet [here](https://docs.google.com/spreadsheets/d/1Npc4yPKKp8UGPvtqGuFqbpsZq5eMMKH2zyyceeKO2wA/edit?usp=sharing).

We're also doing some lightweight project management over at [Trello](https://trello.com/b/3MAHwl26/project-management) to keep track of what tasks are underway and who's working on them.


Actually running the code!
=======

Start by copying the `config/database.example.yml` file over to `config/database.yml`.

Next, if you're on a Mac, make sure you have a Postgres server running locally (dowloading the app is probably your best bet).

Then create a user. In the terminal type:

```
rake db:migrate

rails c
u = User.new(email: "yourname@abc.com")
u.password = "yourpassword"
u.password_confirmation = "yourpassword"
u.save
```

Then seed the database, and start the server:

```
rake db:seed
rails s
```

The output will tell you where to point your browser. Usually this is "http://localhost:3000/"

If you get the following error

```
ActiveRecord::NoDatabaseError: FATAL:  database "philly-open-health_development" does not exist
```

Make sure to create the database first. Run

```
bin/rake db:create db:migrate
```

to create the database.

## Annotating models ##

To annotate the models, run

```
bundle exec annotate --exclude tests,fixtures,factories,serializers
```

## Running tests ##

To run tests with Spring preloading, use `bin/rspec` or
`bin/cucumber`.
