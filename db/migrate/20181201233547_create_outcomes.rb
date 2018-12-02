class CreateOutcomes < ActiveRecord::Migration[5.2]
  def change
    create_table :outcomes do |t|
      t.integer :event_id
      t.string :name
      t.integer :prediction_value

      t.timestamps
    end
  end
end
