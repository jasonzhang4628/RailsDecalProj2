class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.integer :id_number
      t.string :name

      t.timestamps
    end
  end
end
