class CreateSuccessions < ActiveRecord::Migration[5.0]
  def change
    create_table :successions do |t|
      t.integer :repetitions
      t.references :exercise, foreign_key: true
      t.references :workout, foreign_key: true

      t.timestamps
    end
  end
end
