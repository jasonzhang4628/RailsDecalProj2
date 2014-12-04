class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :sender
      t.integer :recipient
      t.string :message

      t.timestamps
    end
  end
end
