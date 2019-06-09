FactoryBot.define do
  factory :shop do
    title { "MyString" }
    address { "MyString" }
    metro_station { "MyString" }
    city { "MyString" }

    trait :invalid do
      title { nil }
    end
  end
end
