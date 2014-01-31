Mission Statement
=============
The Office of HIV Planning (OHP) writes an annual epidemiologic profile (or "epi" profile) of Philadelphia and eight surrounding counties.  This document includes 219 tables on everything from race/ethnicity to drug use to poverty to HIV/AIDS.  This document has always been designed for print, which means that OHP staff select limited data for presentation.  OHP would like to provide the public with access to the full data sets used in developing the epi profile, beginning by uploading the source files to the web.

Getting Started
======

**Note** We'll be moving to a better structure for project management soon, but in the meantime, please take a look at the requirements_notes.md in this directory for an overview of our 1.0-release feature goals.



Start by creating a user. In the terminal type:

```
rake db:migrate

rails c
u = User.new(email: "yourname@abc.com")
u.password = "yourpassword"
u.confirmation_password = "yourpassword"
u.save
```


TODO
======

Create the following models:
  DataSet
    assoc -> source
    name
    description
    publication_date
    collection_date
    added_by -> user
    tags (has_many)
    files (has_many)
    
    
Configure paperclip to use an uploader to attach a document to DataSet

  
