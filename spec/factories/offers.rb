FactoryBot.define do
  factory :offer do
    status :disabled
    advertiser_name "MyString"
    url 'http://www.example.com'
    description "MyText"
    starts_at Date.current
    ends_at Date.current + 2.months
    premium false
  end
end
