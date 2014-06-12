Mission Statement
=============
The Office of HIV Planning (OHP) writes an annual epidemiologic profile (or "epi" profile) of Philadelphia and eight surrounding counties.  This document includes 219 tables on everything from race/ethnicity to drug use to poverty to HIV/AIDS.  This document has always been designed for print, which means that OHP staff select limited data for presentation.  OHP would like to provide the public with access to the full data sets used in developing the epi profile, beginning by uploading the source files to the web.

Getting Started with Development
======

Please take a look at the requirements_notes.md in this directory for an overview of our 1.0-release feature goals.

We're also doing some lightweight project management over at [Trello](https://trello.com/b/3MAHwl26/project-management) to keep track of what tasks are underway and who's working on them.


Actually running the code!
=======

Start by creating a user. In the terminal type:

```
rake db:migrate

rails c
u = User.new(email: "yourname@abc.com")
u.password = "yourpassword"
u.confirmation_password = "yourpassword"
u.save
```

Then seed the database, and start the server:

```
rake db:seed
rails s
```

The output will tell you where to point your browser. Usually this is "http://localhost:3000/"
