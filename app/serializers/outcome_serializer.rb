class OutcomeSerializer < ActiveModel::Serializer
  attributes :id, :name, :prediction_value
end
