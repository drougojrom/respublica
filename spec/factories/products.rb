FactoryBot.define do
  factory :product do
    articul { "MyString" }
    title { "MyString" }
    weight { 1.5 }
    size { 1.5 }
    color { "MyString" }
    price { 1.5 }
    amount { 1 }
    references { "" }
  end
end