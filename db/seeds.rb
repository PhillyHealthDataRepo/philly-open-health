# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#The following are just for easy demo purposes, and are not 'true' seed data. Newbie mode. :-)

1.upto(10) do |n|
    Dataset.create(title: "Test Document #{n}", description: "Test Doc #{n}", createdate: "2014-2-#{n}")    
end

1.upto(10) do |n|
   Source.create(name: "Big Organization #{n}", description: "A nonprofit", homepageurl: "http://www.hivphilly.org") 
end