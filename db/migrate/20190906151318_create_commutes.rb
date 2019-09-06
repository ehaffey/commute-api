class CreateCommutes < ActiveRecord::Migration[5.2]
  def change
    create_table :commutes do |t|
      t.date :date
      t.string :mode
      t.integer :time
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
