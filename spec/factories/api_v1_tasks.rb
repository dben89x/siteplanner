FactoryBot.define do
  factory :api_v1_task, class: 'API::V1::Task' do
    title { "MyString" }
    description { "MyString" }
    project { nil }
  end
end
