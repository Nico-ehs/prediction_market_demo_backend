class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
  has_many :outcomes
end
