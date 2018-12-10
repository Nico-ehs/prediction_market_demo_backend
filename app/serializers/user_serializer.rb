class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :money
  has_many :predictions
end
