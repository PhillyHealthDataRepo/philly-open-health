As of Jan 30 2014, these requirements have NOT been vetted by Briana


What is this?
=======

This document is a first cut of requirements for the Philly Health Data Repo project of Code For Philly, worked out by Ben Novack (ben@manywords.net) as project manager and Briana Morgan (briana.l.morgan@gmail.com) as Subject Matter Expert and "client." This project seeks to provide a web site where the Philadelphia Office of HIV Planning can upload and store public health data, for their own use and in order to provide easier access to this data for third parties.

A Note on Formality
----
I've tried to be unambiguous but informal in these requirements. If you're used to reading more formal requirements documents where, for example, "shall" and "will" mean very specific things, please ignore those conventions. That said, we hope there is no actual *ambiguity* in what's needed; if anything is unclear to the point that you can't proceed with development, please feel free to contact Ben or Briana and we can get it hammered out.


Data Sets
=====

**Note on nomenclature**
Informally, we often refer to "documents" - PDFs, Excel sheets, etc. However, as we do actual development, we should keep in mind that our atomic unit of information is not a "document" but a _Data Set_ - a collection of statistics or other information. A given Data Set may be split among multiple files: for example, HealthSurvey2013-part1.csv, HealthSurvey2013-part2.csv, etc. Whenever possible, we should try to refer to _Data Sets_ and _Files_ instead of _Documents_, since that's more ambiguous and might refer to either one. (This isn't hypothetical; this ambiguity has already caused actual problems.)

**Data Sets** have the following attributes:
* Title
* Description - Freeform text
* Data Source - The organization that the information comes from
* Date published - When this data was made initially made available to the public. See below on *dates* for requirements.
* Collection Date Range - When the data was gathered. See below on *dates* for requirements.
* Geographic detail level: One or more of the 9-County Philadelphia EMA, State, County, Zip Code, US Census Tract, Other. 
* The user account that created this entry
* Any number of *Tags* to categorize the data.
* 1 or more *Files*.

For version 1.0, Metadata will be entered manually by the user creating the Data Set entry and uploading the file(s). 

Uploading
------
Users (Trusted and Administrators) can upload new data sets. All fields are required, except Tags, which may be empty. As the Data Source is entered, users will be prompted to select from an existing Data Source; if none is available, the form will expand and the user will be required to enter information about the Data Source (see the section on Data Sources for details on these fields.)

A warning will be displayed, with background/color to make it stand out, that warns users not to upload ANY data that is not acceptable for public access. Data on the repository is available to the general public and is assumed to have no problems with HIPAA, NDAs, or any other limitations on its publication.

A suggested Tag list will be presented, and the user can click on tags to add them to the list of tags attached to the Data Set. The tag list will be pre-populated with major categories of data drawn from the sections of the Office of HIV Planning Epi-Profile. 


Data Set Availability
------

Data Sets should be available at fixed, reasonbly-brief URLs. These need not include a title, but Office of HIV Planning staff must be able to refer to, eg, "hivphilly.org/datarepo/datasets/3195". (The preceding is an example and not an actual or required URL path format)

Tags
====
Question: Should we call these "categories?"

Data Sources
======
A Data Source is an organization, such as the US Census or Office of HIV Planning, that originally created a data set. Data Source information is entered by users when uploading new Data Sets. Data Sources have these attributes:
* Name
* Description (optional)
* Homepage URL (optional)

User Accounts
======

No log-in is required to view or access any data sets. However, user accounts are required for creating new entries & uploading files. There will be no "Register" button - all user accounts must be created by an administrator.

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

Dates
----

QUESTION FOR BRIANA: How precise should dates be? Month-and-year, or do we need days?

Search
-----

Users will be able to search for data sets. NEED TO WORK THIS OUT IN MORE DEPTH
