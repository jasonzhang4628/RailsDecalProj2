class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :imglink
      t.integer :owner
      t.string :breed

      t.timestamps
    end
  end
end
