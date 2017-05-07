require 'faker'

FactoryGirl.define do
  factory :post do |f|
    f.title { Faker::Lorem.characters(10) }
    f.body { Faker::Lorem.paragraphs(3) }
  end
end