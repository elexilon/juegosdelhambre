class CreateChequeos < ActiveRecord::Migration[5.1]
  def change
    create_table :chequeos do |t|
      t.string :fecha
      t.integer :peso
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
