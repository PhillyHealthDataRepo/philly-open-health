# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :attachment do
    dataset

    url "http://www.website.com"
  end
end
