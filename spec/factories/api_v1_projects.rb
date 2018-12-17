FactoryBot.define do
  factory :api_v1_project, class: 'API::V1::Project' do
    title { "MyString" }
    description { "MyString" }
  end
end
