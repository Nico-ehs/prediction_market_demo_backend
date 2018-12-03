class CreatePredictions < ActiveRecord::Migration[5.2]
  def change
    create_table :predictions do |t|
      t.integer :amount
      t.integer :prediction_value_at_bet
      t.integer :user_id
      t.integer :outcome_id

      t.timestamps
    end
  end
end
