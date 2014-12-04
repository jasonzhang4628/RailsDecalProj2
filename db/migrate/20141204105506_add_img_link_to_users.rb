class AddImgLinkToUsers < ActiveRecord::Migration
  def change
    add_column :users, :imglink, :string
  end
end
