class CitySerializer < ActiveModel::Serializer
    attributes :id, :name, :state, :latitude, :longitude
    belongs_to :user
end