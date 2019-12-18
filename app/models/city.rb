class City < ApplicationRecord
  has_many :user_cities
  belongs_to :user
end
