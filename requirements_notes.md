As of Jan 30 2014, these requirements have NOT been vetted by Briana


Note on formality
=======
I've tried to be unambiguous but informal in these requirements. If you're used to reading more formal requirements documents where, for example, "shall" and "will" mean very specific things, please ignore those conventions. That said, we hope there is no actual *ambiguity* in what's needed; if anything is unclear to the point that you can't proceed with development, please feel free to contact Ben or Briana and we can get it hammered out.

User Types
======

No log-in is required to view or access any data sets. However, user accounts are required for creating new entries & uploading files. There will be no "Register" button - all user accounts must be created by an administrator.

There are three types of users:
1) The general public - users who do not have an account at all. These users have read-only access to the entire repository of data sets, search functionality, etc.
2) Trusted Users -  Individuals who have been entrusted with an account to upload & manage data sets. These users are able to upload new data sets and edit metadata or upload new files for data sets they created. However, they have only read-only access to all other data sets.
3) Administrators - Very limited in number; probably just HIVPhilly staff and trusted developers. These users have edit & delete capabilities for all data sets and files. Administrators also have the ability to register new user accounts.

User Data
------
Each user account will track:
* Username
* Name
* Email address
* Organization

Account Registration
-----
A link in the navigation bar of Administrator accounts will link to a New User page. This page will have fields for all of the items in User Data, except for the password.

Upon validation of the data input by the administrator, An auto-login link will be emailed directly to the email address provided. Upon logging in, the user will be prompted to create a secure password, which will be required for future log-ins. 

Data Sets
=====

**Note on nomenclature**
Informally, we often refer to "documents" - PDFs, Excel sheets, etc. However, in more formal contexts, we should keep in mind that our atomic unit of information is not a "document" but a _Data Set_ - a collection of statistics or other information. A given Data Set may be split among multiple files: for example, HealthSurvey2013-part1.csv, HealthSurvey2013-part2.csv, etc. Whenever possible, we should try to refer to _Data Sets_ and _Files_ instead of _Documents_, since that's more ambiguous and might refer to either one. (This isn't hypothetical; this ambiguity has already caused actual problems.)

**Data Sets** have the following metadata:
* Title
* Description - Freeform text
* Data Source - The organization that the information comes from
* Date published - When this data was made initially made available to the public. See below on *dates* for requirements.
* Collection Date Range - When the data was gathered. See below on *dates* for requirements.
* Geographic detail level: One or more of the 9-County Philadelphia EMA, State, County, Zip Code, US Census Tract, Other. 
* Any number of *Tags* to categorize the data.
* 1 or more *Files*.

For version 1.0, Metadata will be entered manually by the user creating the Data Set entry and uploading the file(s). 

Uploading
------
Users (Trusted and Administrators) can upload new data sets. All fields are required, except Tags, which may be empty. As the Data Source is entered, users will be prompted to select from an existing Data Source; if none is available, the form will expand and the user will be required to enter information about the Data Source (see the section on Data Sources for details on these fields.)

A suggested Tag list will be presented, and the user can click on tags to add them to the list of tags attached to the Data Set. The tag list will be pre-populated with major categories of data drawn from the sections of the HIVPhilly Epi-Profile. 


Data Set Availability
------

Data Sets shall be available at fixed, reasonbly-brief URLs. These not be friendly text, but HIVPhilly staff must be able to refer to, eg, "hivphilly.org/datarepo/datasets/3195". (The preceding is an example and not an actual or required URL path format)


Dates
----

QUESTION FOR BRIANA: How precise should dates be? Month-and-year, or do we need days?

Search
-----

Users will be able to 


Random notes not formalized into requirements follow:
====

We need a website to organize documents.
Documents
     Documents have metadata
          Metadata is (mostly?) manually input by SME (briana)
Users will be able to:
     Search for documents based on metadata criteria
     View documents
     Access documents directly via fixed URLs
          Ex: hivphilly.org/repo/123456
Need to:    
     Build models for document
     Research/set up Solr, sunspot

Useful gems:

railsadmin
devise for useraccounts
paperclip