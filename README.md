PHL Open Health
======
the thing we're building


Getting Started
======

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
    
Configure paperclip to use an uploader to attach a document to DataSet

  
