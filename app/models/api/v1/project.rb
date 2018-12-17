class API::V1::Project < ApplicationRecord
  has_many :tasks
end
