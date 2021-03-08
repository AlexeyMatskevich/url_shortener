FactoryBot.define do
  factory :link do
    url { Faker::Internet.unique.url }
    clicked { 1 }
  end
end
