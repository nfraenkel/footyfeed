class AddProfimageToUser < ActiveRecord::Migration
  def change
    add_column :users, :profimage, :string
  end
end
