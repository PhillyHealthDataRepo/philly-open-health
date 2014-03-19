As of Feb 6 2014, everything above the "Future possible work" section has been vetted by OHP. **PLEASE DO NOT** add anything to this file on your own without clearly marking it with *Not Yet Checked by OHP*. Brainstorming and new ideas are awesome, but we need to distinguish them from things that developers can just grab and run with.


What is this?
=======

This document is a first cut of requirements - you can think of it as requirements for 1.0 release. for the Philly Health Data Repo project of Code For Philly, worked out by Ben Novack (ben@manywords.net) as project manager and Briana Morgan (briana.l.morgan@gmail.com) of the Office of HIV Planning (OHP) as Subject Matter Expert and "client." This project seeks to provide a web site where the Philadelphia Office of HIV Planning can upload and store public health data, for their own use and in order to provide easier access to this data for third parties. Further information is available in the README.

A Note on Formality
----
We've tried to be unambiguous but informal in these requirements. If you're used to reading more formal requirements documents where, for example, "shall" and "will" mean very specific things, please ignore those conventions. That said, we hope there is no actual *ambiguity* in what's needed; if anything is unclear to the point that you can't proceed with development, please contact Ben or Briana and we can get it hammered out.


Data Sets
=====

**Note on nomenclature**
Informally, we often refer to "documents" - PDFs, Excel sheets, etc. However, as we do actual development, we should keep in mind that our basic unit of information is not a "document" but a _Data Set_ - a collection of statistics or other information. A given Data Set may be split among multiple files: for example, HealthSurvey2013-part1.csv, HealthSurvey2013-part2.csv, etc. Whenever possible, we should try to refer to _Data Sets_ and _Files_ instead of _Documents_, since _Document_ more ambiguous and might refer to either one. (This isn't hypothetical; this ambiguity has already caused actual problems when one person refers to a "Document" meaning a data set, and another person thinks they mean a single .PDF file.)

**Data Sets** have the following attributes:
* Title
* Description - Freeform text
* Data Source - The organization that the information comes from
* Date published - When this data was made initially made available to the public. See below on *dates* for requirements.
* Collection Date Range - When the data was gathered. See below on *dates* for requirements.
* Geographic detail level: One or more of: 9-County Philadelphia EMA; State; County; Zip Code; US Census Tract; Other. 
* The user account that created this entry
* Any number of *Tags* to categorize the data.
* 1 or more *Files*.

For version 1.0, Metadata will be entered manually by the user creating the Data Set entry and uploading the file(s).

Uploading
------
Users (Trusted and Administrators) can upload new data sets. All fields are required, except Tags, which may be empty. As the Data Source is entered, users will be prompted to select from an existing Data Source; if none is available, the form will expand and the user will be required to enter information about the Data Source (see the section on Data Sources for details on these fields.)

A warning will be displayed, with background/color to make it stand out, that warns users not to upload ANY data that is not acceptable for public access. Data on the repository is available to the general public and is assumed to have no problems with HIPAA, NDAs, or any other limitations on its publication. OHP will provide this text, which will be lawyer-vetted and super-formal. We can stick placeholder text in till it's available, but we should make sure the interface design allows for a lengthy legal warning if neccessary. We may need to force the user to click a checkbox or something similar to formally indicate that they've read the legal warning, depending on what the lawyers end up telling us.

A suggested Tag list will be presented, and the user can click on tags to add them to the list of tags attached to the Data Set. The tag list will be pre-populated with major categories of data drawn from the sections of the Office of HIV Planning Epi-Profile. 


Data Set Availability
------

Data Sets should be available at fixed, reasonbly-brief URLs. These need not include a title, but Office of HIV Planning staff must be able to refer to, eg, "hivphilly.org/datarepo/datasets/3195". (That's an example and not an actual or required URL path format)

(This should be pretty much taken care of just by virtue of using Rails.)

Tags
====
Question: Should we call these "categories?" (Probably not)

We might pre-seed the tags with section headers from the epi-profile.

Data Sources
======
A Data Source is an organization, such as the US Census or Office of HIV Planning, that originally created a data set. Data Source information is entered by users when uploading new Data Sets. Data Sources have these attributes:
* Name
* Description (optional)
* Homepage URL (optional)

User Accounts
======

No log-in is required to view or access any data sets. However, only registered users are permitted to create new entries & upload files. There will be no "Register" button - all user accounts must be created by an administrator.

There are three types of users:

1. The general public - users who do not have an account at all. These users have read-only access to the entire repository of data sets, search functionality, etc.
2. Trusted Users -  Individuals who have been entrusted with an account to upload & manage data sets. These users are able to upload new data sets and edit metadata or upload new files for data sets they created. However, they have only read-only access to all other data sets.
3. Administrators - Very limited in number; probably just Office of HIV Planning staff and trusted developers. These users have edit & delete capabilities for all data sets and files. Administrators also have the ability to register new user accounts.

User Data
------
User accounts have these attributes:
* Username
* Name
* Email address
* Organization

Account Registration
-----
A link in the navigation bar of Administrator accounts will link to a New User page. This page will have fields for all of the items in User Data, except for the password.

Upon validation of the data input by the administrator, an auto-login link will be emailed directly to the email address provided. Upon logging in, the user will be prompted to create a secure password, which will be required for future log-ins. 

(The precise workflow for registering new users doesn't necessarily have to be exactly that, if some part of it is troublesome to implement; the key element here is that Administrators have absolute control over new-user registration. There's no "create an account" option for the general public.)

Dates
----

These should be month-and-year - no days needed.

We'll also need to represent date ranges.

Search
-----

Users will be able to search for data sets. NEED TO WORK THIS OUT IN MORE DEPTH

Development and Testing To-Do List:
=======
* Switch to Postgres from sqlite
* Set up heroku and start deploying there regularly (This is done!)
* Get a test data set and seed the test DB with it

Eventually, to deploy For Real, we also need to:
* Talk to OHP about hosting options - we might be constrained in our deployment strategy based on their needs or resources.


Brainstorming and Possible Future Work
======
Everything in this is *Not Yet Checked by OHP*

* Right now, we're focused on making availble to the general public data that has no restrictions on its access - we specfiically *don't* want anything that has personally-identifiable information that could be traced back to an individual, because that would be HIPAA-violating as all get-out. But! What if we could add sections, limited by user access, that only trusted users (ie, members of the HIV services community?) have access to? We'd probably need to have specific additional limits on user accounts, since we might have public-health community users who aren't cleared for this specific data. 

* It would be really cool if we could come up with some ways to automate the metadata gathering process - suggest tags?
