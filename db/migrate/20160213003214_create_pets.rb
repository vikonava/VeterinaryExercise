class CreatePets < ActiveRecord::Migration[5.0]
  def change
    create_table :pets do |t|
      t.references :owner, foreign_key: true
      t.string :name, limit: 35
      t.string :type, limit: 4
      t.string :breed, limit: 35
      t.integer :age, limit: 2
      t.decimal :weight
			t.date :last_visit

      t.timestamps
    end
  end
end
