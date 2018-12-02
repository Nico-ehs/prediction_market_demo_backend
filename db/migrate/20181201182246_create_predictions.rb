class CreatePredictions < ActiveRecord::Migration[5.2]
  def change
    create_table :predictions do |t|
      t.integer :amount
      t.str :outcome
      t.integer :user_id
      t.integer :event_id

      t.timestamps
    end
  end
end
