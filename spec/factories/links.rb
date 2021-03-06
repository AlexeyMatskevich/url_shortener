FactoryBot.define do
  factory :link do
    url { Faker::Internet.unique.url }
    short_path { SecureRandom.urlsafe_base64(8) }
    clicked { 1 }
  end
end
