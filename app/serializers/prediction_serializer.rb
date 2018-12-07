class PredictionSerializer < ActiveModel::Serializer
  attributes :id, :outcome_id, :user_id, :prediction_value_at_bet, :amount
end
