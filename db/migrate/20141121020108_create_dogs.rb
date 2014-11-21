class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :age
      t.integer :owner_id
      t.string :breed

      t.timestamps
    end
  end
end
